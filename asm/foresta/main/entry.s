lbl_80407B88:
/* 80407B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80407B8C  7C 08 02 A6 */	mflr r0
/* 80407B90  38 60 00 00 */	li r3, 0
/* 80407B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80407B98  48 00 0B 59 */	bl padmgr_Init
/* 80407B9C  4B F8 E4 9D */	bl new_Debug_mode
/* 80407BA0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80407BA4  38 00 00 00 */	li r0, 0
/* 80407BA8  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80407BAC  38 60 00 00 */	li r3, 0
/* 80407BB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80407BB4  B0 04 00 D4 */	sth r0, 0xd4(r4)
/* 80407BB8  4B FF FE 49 */	bl func_80407A00
/* 80407BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80407BC0  38 60 00 00 */	li r3, 0
/* 80407BC4  7C 08 03 A6 */	mtlr r0
/* 80407BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80407BCC  4E 80 00 20 */	blr 
