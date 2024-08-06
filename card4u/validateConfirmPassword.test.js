const {validateConfirmPassword} = require('./script')

it('ver se as senhas tao iguais',()=>{
    expect(validateConfirmPassword("Taey0n.g", "Taey0n.g")).toBe(true)
})

it('ver se as senhas tao iguais',()=>{
    expect(validateConfirmPassword("Taey0n.g", "Taey0n.")).toBe(false)
})

it('ver se as senhas tao iguais',()=>{
    expect(validateConfirmPassword("Taey0n.", "Taey0n.")).toBe(false)
})

it('ver se as senhas tao iguais',()=>{
    expect(validateConfirmPassword("Taey0ng", "Taey0ng")).toBe(false)
})

it('ver se as senhas tao iguais',()=>{
    expect(validateConfirmPassword("Taeyong", "Taeyong")).toBe(false)
})

it('ver se as senhas tao iguais',()=>{
    expect(validateConfirmPassword("Taeyon.", "Taey0n.")).toBe(false)
})