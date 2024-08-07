const {validateConfirmPassword} = require('./script')

it('Validar se as senhas são iguais',()=>{
    expect(validateConfirmPassword("Taey0n.g", "Taey0n.g")).toBe(true)
})

it('Validar se as senhas são diferentes',()=>{
    expect(validateConfirmPassword("Taey0n.g", "Taey0n.")).toBe(false)
})

it('Validar se as senhas são iguais',()=>{
    expect(validateConfirmPassword("Taey0n.", "Taey0n.")).toBe(true)
})

it('Validar se as senhas são iguais',()=>{
    expect(validateConfirmPassword("Taey0ng", "Taey0ng")).toBe(true)
})

it('Validar se as senhas são iguais',()=>{
    expect(validateConfirmPassword("Taeyong", "Taeyong")).toBe(true)
})

it('Validar se as senhas são diferentes',()=>{
    expect(validateConfirmPassword("Taeyon.", "Taey0n.")).toBe(false)
})