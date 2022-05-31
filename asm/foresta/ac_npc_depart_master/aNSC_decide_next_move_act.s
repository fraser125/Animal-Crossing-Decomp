lbl_8054DEF0:
/* 8054DEF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054DEF4  7C 08 02 A6 */	mflr r0
/* 8054DEF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054DEFC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8054DF00  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8054DF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DF08  88 03 09 40 */	lbz r0, 0x940(r3)
/* 8054DF0C  7C 7F 1B 78 */	mr r31, r3
/* 8054DF10  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8054DF14  41 82 00 0C */	beq lbl_8054DF20
/* 8054DF18  38 60 00 3D */	li r3, 0x3d
/* 8054DF1C  48 00 00 C8 */	b lbl_8054DFE4
lbl_8054DF20:
/* 8054DF20  7C 83 23 78 */	mr r3, r4
/* 8054DF24  4B E8 B7 1D */	bl get_player_actor_withoutCheck
/* 8054DF28  7C 64 1B 79 */	or. r4, r3, r3
/* 8054DF2C  40 82 00 0C */	bne lbl_8054DF38
/* 8054DF30  80 7F 09 94 */	lwz r3, 0x994(r31)
/* 8054DF34  48 00 00 B0 */	b lbl_8054DFE4
lbl_8054DF38:
/* 8054DF38  7F E3 FB 78 */	mr r3, r31
/* 8054DF3C  4B FF F3 45 */	bl aNDM_check_safe_zone
/* 8054DF40  2C 03 00 01 */	cmpwi r3, 1
/* 8054DF44  40 82 00 0C */	bne lbl_8054DF50
/* 8054DF48  38 60 00 3D */	li r3, 0x3d
/* 8054DF4C  48 00 00 98 */	b lbl_8054DFE4
lbl_8054DF50:
/* 8054DF50  3C 60 80 65 */	lis r3, lit_835@ha /* 0x8064950C@ha */
/* 8054DF54  C3 FF 00 BC */	lfs f31, 0xbc(r31)
/* 8054DF58  C0 03 95 0C */	lfs f0, lit_835@l(r3)  /* 0x8064950C@l */
/* 8054DF5C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8054DF60  41 80 00 10 */	blt lbl_8054DF70
/* 8054DF64  80 1F 09 C0 */	lwz r0, 0x9c0(r31)
/* 8054DF68  2C 00 00 00 */	cmpwi r0, 0
/* 8054DF6C  40 82 00 0C */	bne lbl_8054DF78
lbl_8054DF70:
/* 8054DF70  38 60 00 3D */	li r3, 0x3d
/* 8054DF74  48 00 00 70 */	b lbl_8054DFE4
lbl_8054DF78:
/* 8054DF78  88 7F 09 A4 */	lbz r3, 0x9a4(r31)
/* 8054DF7C  88 9F 09 A2 */	lbz r4, 0x9a2(r31)
/* 8054DF80  7C 03 20 40 */	cmplw r3, r4
/* 8054DF84  41 82 00 40 */	beq lbl_8054DFC4
/* 8054DF88  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8054DF8C  2C 00 00 3F */	cmpwi r0, 0x3f
/* 8054DF90  41 82 00 14 */	beq lbl_8054DFA4
/* 8054DF94  2C 00 00 41 */	cmpwi r0, 0x41
/* 8054DF98  41 82 00 0C */	beq lbl_8054DFA4
/* 8054DF9C  4B FF F1 59 */	bl aNDM_get_next_zone
/* 8054DFA0  98 7F 09 A3 */	stb r3, 0x9a3(r31)
lbl_8054DFA4:
/* 8054DFA4  3C 60 80 65 */	lis r3, lit_836@ha /* 0x80649510@ha */
/* 8054DFA8  C0 03 95 10 */	lfs f0, lit_836@l(r3)  /* 0x80649510@l */
/* 8054DFAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8054DFB0  40 80 00 0C */	bge lbl_8054DFBC
/* 8054DFB4  38 60 00 3F */	li r3, 0x3f
/* 8054DFB8  48 00 00 2C */	b lbl_8054DFE4
lbl_8054DFBC:
/* 8054DFBC  38 60 00 41 */	li r3, 0x41
/* 8054DFC0  48 00 00 24 */	b lbl_8054DFE4
lbl_8054DFC4:
/* 8054DFC4  3C 60 80 65 */	lis r3, lit_836@ha /* 0x80649510@ha */
/* 8054DFC8  98 9F 09 A3 */	stb r4, 0x9a3(r31)
/* 8054DFCC  C0 03 95 10 */	lfs f0, lit_836@l(r3)  /* 0x80649510@l */
/* 8054DFD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8054DFD4  40 80 00 0C */	bge lbl_8054DFE0
/* 8054DFD8  38 60 00 3E */	li r3, 0x3e
/* 8054DFDC  48 00 00 08 */	b lbl_8054DFE4
lbl_8054DFE0:
/* 8054DFE0  38 60 00 40 */	li r3, 0x40
lbl_8054DFE4:
/* 8054DFE4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8054DFE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054DFEC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8054DFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DFF4  7C 08 03 A6 */	mtlr r0
/* 8054DFF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8054DFFC  4E 80 00 20 */	blr 
