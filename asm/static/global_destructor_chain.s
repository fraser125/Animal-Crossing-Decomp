.include "macros.inc"

.section .text

.org 0x8009AA94

.global __destroy_global_chain
__destroy_global_chain:
/* 8009AA94 000979F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009AA98 000979F8  7C 08 02 A6 */	mflr r0
/* 8009AA9C 000979FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009AAA0 00097A00  48 00 00 20 */	b lbl_8009AAC0
lbl_8009AAA4:
/* 8009AAA4 00097A04  80 03 00 00 */	lwz r0, 0(r3)
/* 8009AAA8 00097A08  38 80 FF FF */	li r4, -1
/* 8009AAAC 00097A0C  90 0D 90 20 */	stw r0, __global_destructor_chain-_SDA_BASE_(r13)
/* 8009AAB0 00097A10  81 83 00 04 */	lwz r12, 4(r3)
/* 8009AAB4 00097A14  80 63 00 08 */	lwz r3, 8(r3)
/* 8009AAB8 00097A18  7D 89 03 A6 */	mtctr r12
/* 8009AABC 00097A1C  4E 80 04 21 */	bctrl 
lbl_8009AAC0:
/* 8009AAC0 00097A20  80 6D 90 20 */	lwz r3, __global_destructor_chain-_SDA_BASE_(r13)
/* 8009AAC4 00097A24  28 03 00 00 */	cmplwi r3, 0
/* 8009AAC8 00097A28  40 82 FF DC */	bne lbl_8009AAA4
/* 8009AACC 00097A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AAD0 00097A30  7C 08 03 A6 */	mtlr r0
/* 8009AAD4 00097A34  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AAD8 00097A38  4E 80 00 20 */	blr 

.global __register_global_object
__register_global_object:
/* 8009AADC 00097A3C  80 0D 90 20 */	lwz r0, __global_destructor_chain-_SDA_BASE_(r13)
/* 8009AAE0 00097A40  90 05 00 00 */	stw r0, 0(r5)
/* 8009AAE4 00097A44  90 85 00 04 */	stw r4, 4(r5)
/* 8009AAE8 00097A48  90 65 00 08 */	stw r3, 8(r5)
/* 8009AAEC 00097A4C  90 AD 90 20 */	stw r5, __global_destructor_chain-_SDA_BASE_(r13)
/* 8009AAF0 00097A50  4E 80 00 20 */	blr 
