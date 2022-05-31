lbl_80504AF4:
/* 80504AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504AF8  7C 08 02 A6 */	mflr r0
/* 80504AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504B04  7C 9F 23 78 */	mr r31, r4
/* 80504B08  80 03 11 FC */	lwz r0, 0x11fc(r3)
/* 80504B0C  2C 00 00 00 */	cmpwi r0, 0
/* 80504B10  41 82 00 2C */	beq lbl_80504B3C
/* 80504B14  4B FD 08 59 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80504B18  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80504B1C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80504B20  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80504B24  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80504B28  C0 25 00 00 */	lfs f1, 0(r5)
/* 80504B2C  7F E3 FB 78 */	mr r3, r31
/* 80504B30  38 80 00 00 */	li r4, 0
/* 80504B34  38 A0 00 01 */	li r5, 1
/* 80504B38  4B FE 10 C5 */	bl func_804E5BFC
lbl_80504B3C:
/* 80504B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80504B44  7C 08 03 A6 */	mtlr r0
/* 80504B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80504B4C  4E 80 00 20 */	blr 
