const {validatePassword} = require('./script')

it('validar a senha',()=>{
    expect(validatePassword("Taey0n.g")).toBe(true)
})

it('validar a senha',()=>{
    expect(validatePassword("Taey0n.")).toBe(false)
})

it('validar a senha',()=>{
    expect(validatePassword("Taey0ng")).toBe(false)
})

it('validar a senha',()=>{
    expect(validatePassword("Taeyong")).toBe(false)
})

it('validar a senha',()=>{
    expect(validatePassword("Taeyon.g")).toBe(false)
})