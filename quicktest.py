import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sa004package.kangroll_basic_fn001_mln_com_release import fn010_translp  # 替换为实际的导入路径

def read_boundary_conditions(filename):
    return pd.read_csv(filename)

def simulate_and_plot(boundary_conditions):
    fig, axs = plt.subplots(4, 1, figsize=(6, 8))
    v1_values = [0.02, 0.10, 0.25, 0.4]
    colors = ['blue', 'green', 'red', 'black']

    for index, v1_test in enumerate(v1_values):
        v2_test = np.array([0, 1, 1, 0] + [0]*12 + [v1_test])
        u_ini_test = 0.1
        total_MLN_output = []

        for _, row in boundary_conditions.iterrows():
            H3_ini_test = np.array([row['H3_value_1'], row['H3_value_2'], row['H3_value_3'], row['H3_value_4']])
            lay1_iterations_test = int(row['lay1_iterations'])
            lay2_iterations_test = int(row['lay2_iterations'])

            MLN_output, NL_final = fn010_translp(v1_test, v2_test, u_ini_test, H3_ini_test, lay1_iterations_test, lay2_iterations_test, debug_mode=False, test_random=True)
            u_ini_test = MLN_output[-1]
            total_MLN_output.extend(MLN_output)

        axs[index].plot(total_MLN_output, label=f'TP53 Damage: {v1_test}', color=colors[index])
        axs[index].set_title(f'TP53 Damage: {v1_test}')
        axs[index].set_xlabel('Hours')
        axs[index].set_ylabel('Neoplastic Load Value')
        axs[index].legend()
        axs[index].grid(True)
        axs[index].set_ylim([0, 0.8])

    plt.tight_layout()
    plt.savefig('./test_kangroll_basic_fn001_mln_com_result_20231224.pdf')
    plt.show(block=False)
    plt.pause(2)
    plt.close()

if __name__ == "__main__":
    boundary_conditions = read_boundary_conditions('test_boundary.csv')
    simulate_and_plot(boundary_conditions)

