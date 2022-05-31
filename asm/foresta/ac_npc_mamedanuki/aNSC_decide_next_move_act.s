lbl_8055AE58:
/* 8055AE58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055AE5C  7C 08 02 A6 */	mflr r0
/* 8055AE60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055AE64  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8055AE68  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8055AE6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055AE70  93 C1 00 08 */	stw r30, 8(r1)
/* 8055AE74  7C 7F 1B 78 */	mr r31, r3
/* 8055AE78  7C 83 23 78 */	mr r3, r4
/* 8055AE7C  4B E7 E7 C5 */	bl get_player_actor_withoutCheck
/* 8055AE80  7C 7E 1B 78 */	mr r30, r3
/* 8055AE84  4B E3 D5 75 */	bl mDemo_Get_talk_actor
/* 8055AE88  28 1E 00 00 */	cmplwi r30, 0
/* 8055AE8C  40 82 00 0C */	bne lbl_8055AE98
/* 8055AE90  80 7F 09 94 */	lwz r3, 0x994(r31)
/* 8055AE94  48 00 01 28 */	b lbl_8055AFBC
lbl_8055AE98:
/* 8055AE98  88 1F 09 40 */	lbz r0, 0x940(r31)
/* 8055AE9C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8055AEA0  41 82 00 18 */	beq lbl_8055AEB8
/* 8055AEA4  80 1F 09 3C */	lwz r0, 0x93c(r31)
/* 8055AEA8  7C 00 F0 40 */	cmplw r0, r30
/* 8055AEAC  40 82 00 0C */	bne lbl_8055AEB8
/* 8055AEB0  38 60 00 3D */	li r3, 0x3d
/* 8055AEB4  48 00 01 08 */	b lbl_8055AFBC
lbl_8055AEB8:
/* 8055AEB8  28 03 00 00 */	cmplwi r3, 0
/* 8055AEBC  41 82 00 38 */	beq lbl_8055AEF4
/* 8055AEC0  7C 03 F8 40 */	cmplw r3, r31
/* 8055AEC4  41 82 00 30 */	beq lbl_8055AEF4
/* 8055AEC8  4B E3 F5 49 */	bl mDemo_Check_ListenAble
/* 8055AECC  2C 03 00 01 */	cmpwi r3, 1
/* 8055AED0  40 82 00 24 */	bne lbl_8055AEF4
/* 8055AED4  88 1F 09 40 */	lbz r0, 0x940(r31)
/* 8055AED8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8055AEDC  40 82 00 10 */	bne lbl_8055AEEC
/* 8055AEE0  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8055AEE4  2C 00 00 3D */	cmpwi r0, 0x3d
/* 8055AEE8  40 82 00 0C */	bne lbl_8055AEF4
lbl_8055AEEC:
/* 8055AEEC  38 60 00 3D */	li r3, 0x3d
/* 8055AEF0  48 00 00 CC */	b lbl_8055AFBC
lbl_8055AEF4:
/* 8055AEF4  3C 60 80 65 */	lis r3, lit_854@ha /* 0x806496D8@ha */
/* 8055AEF8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8055AEFC  C0 03 96 D8 */	lfs f0, lit_854@l(r3)  /* 0x806496D8@l */
/* 8055AF00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055AF04  40 80 00 20 */	bge lbl_8055AF24
/* 8055AF08  88 1F 09 A2 */	lbz r0, 0x9a2(r31)
/* 8055AF0C  28 00 00 02 */	cmplwi r0, 2
/* 8055AF10  41 82 00 0C */	beq lbl_8055AF1C
/* 8055AF14  28 00 00 03 */	cmplwi r0, 3
/* 8055AF18  40 82 00 0C */	bne lbl_8055AF24
lbl_8055AF1C:
/* 8055AF1C  38 60 00 3D */	li r3, 0x3d
/* 8055AF20  48 00 00 9C */	b lbl_8055AFBC
lbl_8055AF24:
/* 8055AF24  3C 60 80 65 */	lis r3, lit_855@ha /* 0x806496DC@ha */
/* 8055AF28  C3 FF 00 BC */	lfs f31, 0xbc(r31)
/* 8055AF2C  C0 03 96 DC */	lfs f0, lit_855@l(r3)  /* 0x806496DC@l */
/* 8055AF30  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8055AF34  41 80 00 10 */	blt lbl_8055AF44
/* 8055AF38  80 1F 09 C0 */	lwz r0, 0x9c0(r31)
/* 8055AF3C  2C 00 00 00 */	cmpwi r0, 0
/* 8055AF40  40 82 00 0C */	bne lbl_8055AF4C
lbl_8055AF44:
/* 8055AF44  38 60 00 3D */	li r3, 0x3d
/* 8055AF48  48 00 00 74 */	b lbl_8055AFBC
lbl_8055AF4C:
/* 8055AF4C  88 9F 09 A4 */	lbz r4, 0x9a4(r31)
/* 8055AF50  88 BF 09 A2 */	lbz r5, 0x9a2(r31)
/* 8055AF54  7C 04 28 40 */	cmplw r4, r5
/* 8055AF58  41 82 00 44 */	beq lbl_8055AF9C
/* 8055AF5C  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8055AF60  2C 00 00 3F */	cmpwi r0, 0x3f
/* 8055AF64  41 82 00 18 */	beq lbl_8055AF7C
/* 8055AF68  2C 00 00 41 */	cmpwi r0, 0x41
/* 8055AF6C  41 82 00 10 */	beq lbl_8055AF7C
/* 8055AF70  7F E3 FB 78 */	mr r3, r31
/* 8055AF74  4B FF F1 7D */	bl aNMD_get_next_zone
/* 8055AF78  98 7F 09 A3 */	stb r3, 0x9a3(r31)
lbl_8055AF7C:
/* 8055AF7C  3C 60 80 65 */	lis r3, lit_856@ha /* 0x806496E0@ha */
/* 8055AF80  C0 03 96 E0 */	lfs f0, lit_856@l(r3)  /* 0x806496E0@l */
/* 8055AF84  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8055AF88  40 80 00 0C */	bge lbl_8055AF94
/* 8055AF8C  38 60 00 3F */	li r3, 0x3f
/* 8055AF90  48 00 00 2C */	b lbl_8055AFBC
lbl_8055AF94:
/* 8055AF94  38 60 00 41 */	li r3, 0x41
/* 8055AF98  48 00 00 24 */	b lbl_8055AFBC
lbl_8055AF9C:
/* 8055AF9C  3C 60 80 65 */	lis r3, lit_856@ha /* 0x806496E0@ha */
/* 8055AFA0  98 BF 09 A3 */	stb r5, 0x9a3(r31)
/* 8055AFA4  C0 03 96 E0 */	lfs f0, lit_856@l(r3)  /* 0x806496E0@l */
/* 8055AFA8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8055AFAC  40 80 00 0C */	bge lbl_8055AFB8
/* 8055AFB0  38 60 00 3E */	li r3, 0x3e
/* 8055AFB4  48 00 00 08 */	b lbl_8055AFBC
lbl_8055AFB8:
/* 8055AFB8  38 60 00 40 */	li r3, 0x40
lbl_8055AFBC:
/* 8055AFBC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8055AFC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055AFC4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8055AFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055AFCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055AFD0  7C 08 03 A6 */	mtlr r0
/* 8055AFD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055AFD8  4E 80 00 20 */	blr 
