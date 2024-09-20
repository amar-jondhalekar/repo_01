document.addEventListener("DOMContentLoaded", () => {
    const todoInput = document.getElementById("todoInput");
    const addTodoBtn = document.getElementById("addTodoBtn");
    const todoList = document.getElementById("todoList");

    // Function to add a new todo
    function addTodo() {
        const todoText = todoInput.value.trim();
        if (todoText === "") {
            alert("Please enter a task!");
            return;
        }

        const li = document.createElement("li");
        li.textContent = todoText;

        const removeBtn = document.createElement("button");
        removeBtn.textContent = "Remove";
        removeBtn.addEventListener("click", () => {
            todoList.removeChild(li);
        });

        li.appendChild(removeBtn);
        todoList.appendChild(li);
        todoInput.value = ""; // Clear the input field
    }

    // Event listener for the button
    addTodoBtn.addEventListener("click", addTodo);

    // Event listener for the Enter key
    todoInput.addEventListener("keypress", (e) => {
        if (e.key === "Enter") {
            addTodo();
        }
    });
});
