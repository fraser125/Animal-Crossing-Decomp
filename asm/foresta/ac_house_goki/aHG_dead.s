lbl_8050BD20:
/* 8050BD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050BD24  7C 08 02 A6 */	mflr r0
/* 8050BD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050BD2C  C0 03 01 8C */	lfs f0, 0x18c(r3)
/* 8050BD30  D0 03 01 90 */	stfs f0, 0x190(r3)
/* 8050BD34  C0 03 01 80 */	lfs f0, 0x180(r3)
/* 8050BD38  FC 00 00 1E */	fctiwz f0, f0
/* 8050BD3C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8050BD40  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8050BD44  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8050BD48  40 82 00 10 */	bne lbl_8050BD58
/* 8050BD4C  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050BD50  C0 04 8D F8 */	lfs f0, lit_438@l(r4)  /* 0x80648DF8@l */
/* 8050BD54  D0 03 01 90 */	stfs f0, 0x190(r3)
lbl_8050BD58:
/* 8050BD58  3C A0 80 65 */	lis r5, lit_651@ha /* 0x80648E34@ha */
/* 8050BD5C  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050BD60  C0 43 01 8C */	lfs f2, 0x18c(r3)
/* 8050BD64  C0 25 8E 34 */	lfs f1, lit_651@l(r5)  /* 0x80648E34@l */
/* 8050BD68  C0 04 8D F8 */	lfs f0, lit_438@l(r4)  /* 0x80648DF8@l */
/* 8050BD6C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8050BD70  D0 23 01 8C */	stfs f1, 0x18c(r3)
/* 8050BD74  C0 23 01 8C */	lfs f1, 0x18c(r3)
/* 8050BD78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050BD7C  40 80 00 08 */	bge lbl_8050BD84
/* 8050BD80  D0 03 01 8C */	stfs f0, 0x18c(r3)
lbl_8050BD84:
/* 8050BD84  3C A0 80 65 */	lis r5, lit_652@ha /* 0x80648E38@ha */
/* 8050BD88  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050BD8C  C0 23 01 8C */	lfs f1, 0x18c(r3)
/* 8050BD90  C0 45 8E 38 */	lfs f2, lit_652@l(r5)  /* 0x80648E38@l */
/* 8050BD94  C0 04 8D F8 */	lfs f0, lit_438@l(r4)  /* 0x80648DF8@l */
/* 8050BD98  EC 22 00 72 */	fmuls f1, f2, f1
/* 8050BD9C  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 8050BDA0  C0 23 01 80 */	lfs f1, 0x180(r3)
/* 8050BDA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050BDA8  4C 40 13 82 */	cror 2, 0, 2
/* 8050BDAC  40 82 00 08 */	bne lbl_8050BDB4
/* 8050BDB0  4B E6 86 91 */	bl Actor_delete
lbl_8050BDB4:
/* 8050BDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050BDB8  7C 08 03 A6 */	mtlr r0
/* 8050BDBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8050BDC0  4E 80 00 20 */	blr 
