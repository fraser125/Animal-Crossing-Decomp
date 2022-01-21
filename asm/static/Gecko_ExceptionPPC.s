.include "macros.inc"

.section .text

.org 0x8009B59C

.global __unregister_fragment
__unregister_fragment:
/* 8009B59C 000984FC  2C 03 00 00 */	cmpwi r3, 0
/* 8009B5A0 00098500  4D 80 00 20 */	bltlr 
/* 8009B5A4 00098504  2C 03 00 01 */	cmpwi r3, 1
/* 8009B5A8 00098508  4C 80 00 20 */	bgelr 
/* 8009B5AC 0009850C  1C 83 00 0C */	mulli r4, r3, 0xc
/* 8009B5B0 00098510  3C 60 80 21 */	lis r3, fragmentinfo@ha
/* 8009B5B4 00098514  38 00 00 00 */	li r0, 0
/* 8009B5B8 00098518  38 63 91 B8 */	addi r3, r3, fragmentinfo@l
/* 8009B5BC 0009851C  7C 63 22 14 */	add r3, r3, r4
/* 8009B5C0 00098520  90 03 00 00 */	stw r0, 0(r3)
/* 8009B5C4 00098524  90 03 00 04 */	stw r0, 4(r3)
/* 8009B5C8 00098528  90 03 00 08 */	stw r0, 8(r3)
/* 8009B5CC 0009852C  4E 80 00 20 */	blr 

.global __register_fragment
__register_fragment:
/* 8009B5D0 00098530  3C A0 80 21 */	lis r5, fragmentinfo@ha
/* 8009B5D4 00098534  38 A5 91 B8 */	addi r5, r5, fragmentinfo@l
/* 8009B5D8 00098538  80 05 00 08 */	lwz r0, 8(r5)
/* 8009B5DC 0009853C  2C 00 00 00 */	cmpwi r0, 0
/* 8009B5E0 00098540  40 82 00 1C */	bne lbl_8009B5FC
/* 8009B5E4 00098544  90 65 00 00 */	stw r3, 0(r5)
/* 8009B5E8 00098548  38 00 00 01 */	li r0, 1
/* 8009B5EC 0009854C  38 60 00 00 */	li r3, 0
/* 8009B5F0 00098550  90 85 00 04 */	stw r4, 4(r5)
/* 8009B5F4 00098554  90 05 00 08 */	stw r0, 8(r5)
/* 8009B5F8 00098558  4E 80 00 20 */	blr 
lbl_8009B5FC:
/* 8009B5FC 0009855C  38 60 FF FF */	li r3, -1
/* 8009B600 00098560  4E 80 00 20 */	blr 
