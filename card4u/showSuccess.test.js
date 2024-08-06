const {showSuccess} = require('./script')

it('mostrar se o envio deu certo',()=>{
    expect(showSuccess("mensage")).toBe(true)
})