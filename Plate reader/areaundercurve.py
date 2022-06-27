import pandas as pd
import numpy as np
from scipy.signal import argrelextrema, filtfilt, butter
import matplotlib.pyplot as plt
import os

def elements(array):
    return array.ndim and array.size

def areaundercurve(filename, sheetname, PAO1_numpy,columnlabels, graphon = False):
    if not os.path.exists('Figures/' + sheetname):
        os.mkdir ('Figures/' + sheetname)
    defence_data = pd.read_excel(filename, sheet_name = sheetname)
    defence_numpy = np.array(defence_data)
    
    time = PAO1_numpy[:,0]
    
    start = 0
    
    area_under_curve_infected_PAO1 = []
    area_under_curve_non_PAO1 = []
    area_under_curve_infected_defence = []
    area_under_curve_non_defence = []
    
    columnname = []

    for j in np.arange(7):
        
        #The last few columns are organized slightly differently with 9 columns of uninfected data and 27 columns of infected data and that is the following snippet
        counter1 = 0
        counter2 = 0
        if j == 6:
            count_1 = j*48
            count_2 = (j+1)*48-12

            PAO1_numpy_2 = PAO1_numpy[:,count_1+1:count_2+1]
            defence_numpy_2 = defence_numpy[:,count_1+1:count_2+1]

            for i in np.arange(9,36,3):
                if counter1 == 3:
                    counter1 = 0
                if counter2 == 3:
                    counter2 = 0
                counter1 += 1
                counter3=counter2*3  

                data_PAO1 = PAO1_numpy_2[:,i:i+3].mean(axis=1)
                data_PAO1_std = PAO1_numpy_2[:,i:i+3].std(axis=1)

                data_defence = defence_numpy_2[:,i//3*3:i//3*3+3].mean(axis=1)
                data_defence_std = defence_numpy_2[:,i//3*3:i//3*3+3].std(axis=1)

                data_PAO1_uninfected = PAO1_numpy_2[:,counter3:counter3+3].mean(axis=1)
                data_PAO1_uninfected_std = PAO1_numpy_2[:,counter3:counter3+3].std(axis=1)

                data_defence_uninfected = defence_numpy_2[:,counter3:counter3+3].mean(axis=1)
                data_defence_uninfected_std = defence_numpy_2[:,counter3:counter3+3].std(axis=1)

                #This part deals with finding the minimum. If there is no minimum, it is set to time = 10 hrs.
                b, a = butter(3, 0.05)
                filtered = filtfilt(b, a, data_PAO1)
                minimums = np.array(argrelextrema(filtered, np.less)).flatten()
                if not elements(minimums):
                    minimums = [61]
                end = minimums[0]
                
                #To have the corresponding column number listed last few
                columnname.append(columnlabels[i+count_1])

                # Finding the individual area of the curve. 
                area_under_curve_infected_PAO1.append(np.trapz(data_PAO1[start:end-1],x=time[start:end-1]))
                area_under_curve_non_PAO1.append(np.trapz(data_PAO1_uninfected[start:end-1],x=time[start:end-1]))
                area_under_curve_infected_defence.append(np.trapz(data_defence[start:end-1],x=time[start:end-1]))
                area_under_curve_non_defence.append(np.trapz(data_defence_uninfected[start:end-1],x=time[start:end-1]))

                #If you do not want to output the graphs, you can set graphon to False. 
                if graphon == True:
                    fig1, ax1 = plt.subplots(figsize=(4,3))
                    ax1.errorbar(time,data_PAO1_uninfected, yerr = data_defence_uninfected_std, errorevery = 5, color = '#8dd3c7', label = 'WT', zorder = 1)
                    ax1.errorbar(time,data_PAO1, yerr = data_PAO1_std, errorevery = 5, color = '#bebada',label = 'WT$_\phi$', zorder = 2)
                    #ax1.errorbar(time,filtered, color = '#bebada',linestyle = 'dashed', label = 'PAO1 - Filtered', zorder = 3)
                    ax1.plot(time[end-1],data_PAO1[end-1],'o',color = '#fb8072', zorder = 15)
                    ax1.errorbar(time,data_defence_uninfected, yerr = data_defence_uninfected_std, errorevery = 3, color = '#fdb462', label='DS', zorder = 5)
                    ax1.errorbar(time,data_defence, yerr = data_defence_std, errorevery = 5, color = '#80b1d3', label='DS$_\phi$', zorder = 4)
                    ax1.set_xlim([0,25])
                    ax1.set_ylim([0,1.8])
                    ax1.set_xlabel('Time (hours)')
                    ax1.set_ylabel('$\mathregular{OD_{600}}$')
                    ax1.legend(loc='upper center', bbox_to_anchor=(0.5, 1.2), ncol=4, frameon = False, fancybox=False, shadow=False, fontsize = 'x-small')
                    ax1.spines['right'].set_visible(False)
                    ax1.spines['top'].set_visible(False)
                    ax1.text(0.05, 0.8, '$t_\mathrm{min}$ = ' + str(time[end-1]) + 'hr' , horizontalalignment='left',verticalalignment='center', transform=ax1.transAxes, fontsize = 'x-small')
                    fig1.tight_layout()
                    fig_name = 'Figures/' + sheetname +'/'+ str(columnlabels[i+count_1]) + '.png'
                    plt.savefig(fig_name,dpi=300)
                    plt.close()
                counter2 += 1
        else: 
        # The following section has to do with how the data is ordered (12 columns of uninfected data and 36 columns of infected data). This repeated 6 times in our sheet.
            
            count_1 = j*48
            count_2 = (j+1)*48

            PAO1_numpy_2 = PAO1_numpy[:,count_1+1:count_2+1]
            defence_numpy_2 = defence_numpy[:,count_1+1:count_2+1]

            for i in np.arange(12,48,3):
                if counter1 == 3:
                    counter1 = 0
                if counter2 == 4:
                    counter2 = 0
                counter1 += 1
                
                # counter2 takes values 0, 1, 2, 3 and resets back to 0. At the end of the loop we increment the value of counter2 
                counter3=counter2*3  

                data_PAO1 = PAO1_numpy_2[:,i:i+3].mean(axis=1)
                data_PAO1_std = PAO1_numpy_2[:,i:i+3].std(axis=1)

                data_defence = defence_numpy_2[:,i//3*3:i//3*3+3].mean(axis=1)
                data_defence_std = defence_numpy_2[:,i//3*3:i//3*3+3].std(axis=1)

                data_PAO1_uninfected = PAO1_numpy_2[:,counter3:counter3+3].mean(axis=1)
                data_PAO1_uninfected_std = PAO1_numpy_2[:,counter3:counter3+3].std(axis=1)

                data_defence_uninfected = defence_numpy_2[:,counter3:counter3+3].mean(axis=1)
                data_defence_uninfected_std = defence_numpy_2[:,counter3:counter3+3].std(axis=1)

                #This part deals with finding the minimum. If there is no minimum, it is set to time = 10 hrs.
                b, a = butter(3, 0.05)
                filtered = filtfilt(b, a, data_PAO1)
                minimums = np.array(argrelextrema(filtered, np.less)).flatten()
                if not elements(minimums):
                    minimums = [61]
                end = minimums[0]

                #To have the corresponding column number listed
                columnname.append(columnlabels[i+count_1])

                # Finding the individual area of the curve. 
                area_under_curve_infected_PAO1.append(np.trapz(data_PAO1[start:end-1],x=time[start:end-1]))
                area_under_curve_non_PAO1.append(np.trapz(data_PAO1_uninfected[start:end-1],x=time[start:end-1]))
                area_under_curve_infected_defence.append(np.trapz(data_defence[start:end-1],x=time[start:end-1]))
                area_under_curve_non_defence.append(np.trapz(data_defence_uninfected[start:end-1],x=time[start:end-1]))

                #If you do not want to output the graphs, you can set graphon to False. 
                if graphon == True:
                    fig1, ax1 = plt.subplots(figsize=(4,3))
                    ax1.errorbar(time,data_PAO1_uninfected, yerr = data_defence_uninfected_std, errorevery = 5, color = '#8dd3c7', label = 'WT', zorder = 1)
                    ax1.errorbar(time,data_PAO1, yerr = data_PAO1_std, errorevery = 5, color = '#bebada',label ='WT$_\phi$', zorder = 2)
                    #ax1.errorbar(time,filtered, color = '#bebada',linestyle = 'dashed', label = 'PAO1 - Filtered', zorder = 3)
                    ax1.plot(time[end-1],data_PAO1[end-1],'o',color = '#fb8072', zorder = 15)
                    ax1.errorbar(time,data_defence_uninfected, yerr = data_defence_uninfected_std, errorevery = 5, color = '#fdb462', label='DS', zorder = 3)
                    ax1.errorbar(time,data_defence, yerr = data_defence_std, errorevery = 5, color = '#80b1d3', label='DS$_\phi$', zorder = 4)
                    ax1.set_xlim([0,25])
                    ax1.set_ylim([0,1.8])
                    ax1.set_xlabel('Time (hours)')
                    ax1.set_ylabel('$\mathregular{OD_{600}}$')
                    ax1.legend(loc='upper center', bbox_to_anchor=(0.5, 1.2), ncol=4, frameon = False, fancybox=False, shadow=False, fontsize = 'x-small')
                    ax1.spines['right'].set_visible(False)
                    ax1.spines['top'].set_visible(False)
                    ax1.text(0.05, 0.8, '$t_\mathrm{min}$ = ' + str(time[end-1]) + 'hr' , horizontalalignment='left',verticalalignment='center', transform=ax1.transAxes, fontsize = 'x-small')
                    fig1.tight_layout()
                    fig_name = 'Figures/' + sheetname +'/'+ str(columnlabels[i+count_1]) + '.png'
                    plt.savefig(fig_name,dpi=300)
                    plt.close()
                counter2 += 1
                        
    area_under_curve_non_PAO1_df = pd.DataFrame(area_under_curve_non_PAO1, index = columnname).transpose()
    area_under_curve_non_defence_df = pd.DataFrame(area_under_curve_non_defence, index = columnname).transpose()
    area_under_curve_infected_PAO1_df = pd.DataFrame(area_under_curve_infected_PAO1, index = columnname).transpose()
    area_under_curve_infected_defence_df = pd.DataFrame(area_under_curve_infected_defence, index = columnname).transpose()
    
    #Here the effiency of defence is estimated.
    efficiency_defence = pd.concat((area_under_curve_infected_defence_df.iloc[i]-area_under_curve_infected_PAO1_df.iloc[i])/(area_under_curve_non_PAO1_df.iloc[i]-area_under_curve_infected_PAO1_df.iloc[i]) for i in range(0,len(area_under_curve_non_PAO1_df)))
    return efficiency_defence