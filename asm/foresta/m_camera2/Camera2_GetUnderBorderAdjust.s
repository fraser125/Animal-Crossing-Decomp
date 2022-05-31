lbl_8037DAE4:
/* 8037DAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037DAE8  7C 08 02 A6 */	mflr r0
/* 8037DAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037DAF0  4B FF FF 75 */	bl Camera2_InDoorCheck
/* 8037DAF4  2C 03 00 00 */	cmpwi r3, 0
/* 8037DAF8  41 82 00 10 */	beq lbl_8037DB08
/* 8037DAFC  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037DB00  C0 23 13 54 */	lfs f1, lit_474@l(r3)  /* 0x80641354@l */
/* 8037DB04  48 00 00 0C */	b lbl_8037DB10
lbl_8037DB08:
/* 8037DB08  3C 60 80 64 */	lis r3, lit_475@ha /* 0x80641358@ha */
/* 8037DB0C  C0 23 13 58 */	lfs f1, lit_475@l(r3)  /* 0x80641358@l */
lbl_8037DB10:
/* 8037DB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037DB14  7C 08 03 A6 */	mtlr r0
/* 8037DB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8037DB1C  4E 80 00 20 */	blr 
