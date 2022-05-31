lbl_803EF5AC:
/* 803EF5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF5B0  7C 08 02 A6 */	mflr r0
/* 803EF5B4  3C A0 81 17 */	lis r5, data_81171538@ha /* 0x81171538@ha */
/* 803EF5B8  7C 64 1B 78 */	mr r4, r3
/* 803EF5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF5C0  38 65 15 38 */	addi r3, r5, data_81171538@l /* 0x81171538@l */
/* 803EF5C4  80 63 00 00 */	lwz r3, 0(r3)
/* 803EF5C8  28 03 00 00 */	cmplwi r3, 0
/* 803EF5CC  41 82 00 14 */	beq lbl_803EF5E0
/* 803EF5D0  4B FF FE E9 */	bl SubmenuArea_DoUnlink
/* 803EF5D4  3C 60 81 17 */	lis r3, data_81171538@ha /* 0x81171538@ha */
/* 803EF5D8  38 00 00 00 */	li r0, 0
/* 803EF5DC  90 03 15 38 */	stw r0, data_81171538@l(r3)  /* 0x81171538@l */
lbl_803EF5E0:
/* 803EF5E0  3C 60 81 17 */	lis r3, SubmenuArea_allocp@ha /* 0x8117153C@ha */
/* 803EF5E4  38 00 00 00 */	li r0, 0
/* 803EF5E8  90 03 15 3C */	stw r0, SubmenuArea_allocp@l(r3)  /* 0x8117153C@l */
/* 803EF5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF5F0  7C 08 03 A6 */	mtlr r0
/* 803EF5F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF5F8  4E 80 00 20 */	blr 
