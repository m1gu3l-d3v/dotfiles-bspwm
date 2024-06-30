function closeBuffer()
  vim.cmd('vsplit | bprev | wincmd l | bd')
  --local numBuffers = #vim.fn.getbufinfo({buflisted = 1})
  --if numBuffers > 1 then
  --  vim.cmd('vsplit | bprev | wincmd l | bd')
  --else
  --  vim.cmd('vsplit | bd')
  --end
end

-- Create Java class file
vim.keymap.set("n", "<leader>CA", function()
  local className = vim.fn.input("Enter class name: ", "Example")
  local packagePath = vim.fn.input("Enter package path (optional): ", "")
  local fileName = className .. ".java"

  -- Construir la ruta de la carpeta del paquete
  local packageFolder = packagePath ~= "" and packagePath:gsub("%.", "/") .. "/" or ""
  local fullPath = "src/" .. packageFolder
  --local fullPath = "src/main/java/" .. packageFolder

  -- Verificar si la carpeta del paquete ya existe
  local packageExists = vim.fn.isdirectory(fullPath) == 1

  -- Si no existe, crea la estructura completa
  if not packageExists then
    vim.fn.mkdir("src/" .. packageFolder, "p")
    --vim.fn.mkdir("src/main/java/" .. packageFolder, "p")
  end

  -- Editar el archivo Java
  vim.cmd("edit " .. fullPath .. fileName)

  -- Reemplazar las barras diagonales por puntos en el nombre del paquete
  packagePath = packagePath:gsub("/", ".")

  -- Añadir la estructura del archivo Java
  --"package main.java." ..packagePath .. ";",
  vim.fn.append("$", {
    "package " .. packagePath .. ";",
    "",
    "public class " .. className .. " {",
    "  public static void main(String[] args) {",
    "    ",
    "  }",
    "}",
  })

  vim.fn.append("$", "")
  vim.cmd("normal! kk") -- Mover el cursor a la línea 3
end, opts)
