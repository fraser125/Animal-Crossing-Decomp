lbl_803D3194:
/* 803D3194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3198  7C 08 02 A6 */	mflr r0
/* 803D319C  38 E0 00 01 */	li r7, 1
/* 803D31A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D31A4  4B FF FE 11 */	bl mNpc_GetMakeUtNuminBlock_area
/* 803D31A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D31AC  7C 08 03 A6 */	mtlr r0
/* 803D31B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D31B4  4E 80 00 20 */	blr 
