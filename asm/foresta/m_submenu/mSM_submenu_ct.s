lbl_803EF668:
/* 803EF668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF66C  7C 08 02 A6 */	mflr r0
/* 803EF670  38 80 01 B8 */	li r4, 0x1b8
/* 803EF674  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EF67C  7C 7F 1B 78 */	mr r31, r3
/* 803EF680  4B C6 D9 E9 */	bl bzero
/* 803EF684  38 80 00 00 */	li r4, 0
/* 803EF688  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EF68C  90 9F 00 0C */	stw r4, 0xc(r31)
/* 803EF690  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EF694  3C 63 00 02 */	addis r3, r3, 2
/* 803EF698  90 9F 00 20 */	stw r4, 0x20(r31)
/* 803EF69C  88 03 65 21 */	lbz r0, 0x6521(r3)
/* 803EF6A0  28 00 00 01 */	cmplwi r0, 1
/* 803EF6A4  40 82 00 10 */	bne lbl_803EF6B4
/* 803EF6A8  38 00 00 01 */	li r0, 1
/* 803EF6AC  98 1F 01 65 */	stb r0, 0x165(r31)
/* 803EF6B0  98 83 65 21 */	stb r4, 0x6521(r3)
lbl_803EF6B4:
/* 803EF6B4  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 803EF6B8  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 803EF6BC  90 1F 00 30 */	stw r0, 0x30(r31)
/* 803EF6C0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 803EF6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EF6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF6CC  7C 08 03 A6 */	mtlr r0
/* 803EF6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF6D4  4E 80 00 20 */	blr 
