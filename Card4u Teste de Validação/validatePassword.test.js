const {validatePassword} = require('./script')

it('Validação de senha, se ela contem Letra maiuscula, número, caracter especial e 8 letras',()=>{
    expect(validatePassword("Taey0n.g")).toBe(true)
})

it('Validação de senha, ela contem Letra maiuscula, número e caracter especial mas não tem 8 letras',()=>{
    expect(validatePassword("Ty0n.")).toBe(false)
})

it('Validação de senha, ela contem Letra maiuscula, número e 8 letras mas não tem caracter especial',()=>{
    expect(validatePassword("Taey0ng")).toBe(false)
})

it('Validação de senha, ela contem Letra maiuscula, 8 letras e caracter especial, mas não tem número',()=>{
    expect(validatePassword("Taeyon.g")).toBe(false)
})

it('Validação de senha, ela contem 8 letras, caracter especial e 8 letras mas não tem Letra maiuscula',()=>{
    expect(validatePassword("taey0n.g")).toBe(false)
})

it('Validação de senha, ela contem Letra maiusculae e 8 letras mas não tem caracter especial e número',()=>{
    expect(validatePassword("Taeyong")).toBe(false)
})