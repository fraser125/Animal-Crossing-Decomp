lbl_80376B14:
/* 80376B14  80 A3 01 00 */	lwz r5, 0x100(r3)
/* 80376B18  28 05 00 00 */	cmplwi r5, 0
/* 80376B1C  41 82 00 20 */	beq lbl_80376B3C
/* 80376B20  80 65 00 00 */	lwz r3, 0(r5)
/* 80376B24  80 05 00 04 */	lwz r0, 4(r5)
/* 80376B28  90 64 00 00 */	stw r3, 0(r4)
/* 80376B2C  90 04 00 04 */	stw r0, 4(r4)
/* 80376B30  80 05 00 08 */	lwz r0, 8(r5)
/* 80376B34  90 04 00 08 */	stw r0, 8(r4)
/* 80376B38  4E 80 00 20 */	blr 
lbl_80376B3C:
/* 80376B3C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80376B40  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80376B44  90 A4 00 00 */	stw r5, 0(r4)
/* 80376B48  90 04 00 04 */	stw r0, 4(r4)
/* 80376B4C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80376B50  90 04 00 08 */	stw r0, 8(r4)
/* 80376B54  4E 80 00 20 */	blr 
