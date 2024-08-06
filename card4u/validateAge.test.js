const {validateAge} = require('./script')

it('validar a idade',()=>{
    expect(validateAge('19')).toBe(true)
})