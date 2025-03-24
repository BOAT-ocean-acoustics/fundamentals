# Computing Environment

The tutorials in this book can be executed directly in a Python ennvironment. For that you can use a service provided by GitHub called [Codespaces](https://github.com/features/codespaces). It includes free usage tier for running the code (from a GitHub repository or new code) through a [VSCode](https://code.visualstudio.com/) editor interface. 

```{note}
* 1 hour on a 2-core (default) machine == 1 core hour
* Students can get a GitHub PRO account.
```


## Get Started! 

#### 1. Fork the Repository
Login to GitHub and navigate to [https://github.com/BOAT-ocean-acoustics/fundamentals/](https://github.com/BOAT-ocean-acoustics/fundamentals/) and fork the repository under your username.
   
<img width="973" alt="fork" src="https://github.com/user-attachments/assets/e5e33e0a-fb57-4b92-a5db-88f5736caa64" />

---
#### 2. Create a New Codespace
In the upper right corner select + and new codespace.
   
<img width="1145" alt="new_codespace" src="https://github.com/user-attachments/assets/64f15e47-52df-4c1d-ac95-7952a121aafd" />

---
#### 3. Select a Machine
Select the tutorial repository and the smallest machine.
   
<img width="865" alt="codespace_vm" src="https://github.com/user-attachments/assets/c1c4133f-e49e-439a-8635-fc8ec1efaead" />

---
#### 4. Change to JupyterLab View

The default view in Codespaces is using the VSCode interface. To switch to JupyterLab interface, go to your "My Codespaces" page, click on the triple dots to the right of your codespace name, and select "Open in JupyterLab". Note, the widgets run faster in JupyterLab!

<img width="1106" alt="JupyterLabView" src="https://github.com/user-attachments/assets/4d08bd1c-b9eb-4d05-93d9-80867f18eab3" />

---
#### 4. Open a Notebook
You can open an existing or new notebook by navigating to New->File
   
<img width="1099" alt="NewNotebook" src="https://github.com/user-attachments/assets/944fa232-7cae-4f36-84dc-6594406b3762" />

Run through cells of the `starter-notebook.ipynb` to test your set up. This will also install the necessary libraries.

---
#### 5. Installing Packages
Python libraries can be directly installed within a notebook or from the terminal. The libraries needed to run the notebooks are listed in the `boat_tutorials/requirements.txt` file and can be installed with the command

```
pip install -r requirements.txt
```

If you need a library, you can install it directly:
```
pip install ipywidgets
```

---
#### 5. Return to Codespace
To return to a codespace navigate to [https://github.com/<your_username>/codespaces/]() or open the settings on the top-left triple bar and select Codespaces.
    
<img width="1043" alt="mycodespaces" src="https://github.com/user-attachments/assets/8961b918-c6c5-480d-9cd3-8d360c59461d" />

---
#### 6. Save Your Work
A codespace is deleted if inactive for 30 days. It also restarts periodically. Regularly save your work. If you use GitHub you can commit it to your repository (either through the GitHub integration or through commands on the terminal).
    
<img width="1010" alt="github_integration" src="https://github.com/user-attachments/assets/b4a568db-45e3-451e-81d4-e455340ae236" />

---
#### 7. Stop the Codespace
When you have finished using the codespace, make sure you stop it so you do not waste core hours. Your work will be preserved.
    
<img width="1087" alt="codespace_stop" src="https://github.com/user-attachments/assets/fb17942a-1e82-4caf-aebb-49cc3bd78b9a" />


```{caution} 
If you have already used your Codespaces allocation for personal needs, you can clone the repository and execute the notebooks on your computer. Let us know if you encounter any setup problems.
```






