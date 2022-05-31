lbl_80415E34:
/* 80415E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415E38  7C 08 02 A6 */	mflr r0
/* 80415E3C  38 60 00 08 */	li r3, 8
/* 80415E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415E44  4B FD 14 89 */	bl mRmTp_Index2LightSwitchStatus
/* 80415E48  2C 03 00 00 */	cmpwi r3, 0
/* 80415E4C  41 82 00 10 */	beq lbl_80415E5C
/* 80415E50  3C 60 80 64 */	lis r3, lit_461@ha /* 0x80643BA4@ha */
/* 80415E54  C0 23 3B A4 */	lfs f1, lit_461@l(r3)  /* 0x80643BA4@l */
/* 80415E58  48 00 00 0C */	b lbl_80415E64
lbl_80415E5C:
/* 80415E5C  3C 60 80 64 */	lis r3, lit_462@ha /* 0x80643BA8@ha */
/* 80415E60  C0 23 3B A8 */	lfs f1, lit_462@l(r3)  /* 0x80643BA8@l */
lbl_80415E64:
/* 80415E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415E68  7C 08 03 A6 */	mtlr r0
/* 80415E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80415E70  4E 80 00 20 */	blr 
