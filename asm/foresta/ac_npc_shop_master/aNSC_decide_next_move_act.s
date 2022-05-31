lbl_80577B70:
/* 80577B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80577B74  7C 08 02 A6 */	mflr r0
/* 80577B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80577B7C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80577B80  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80577B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80577B88  88 03 09 40 */	lbz r0, 0x940(r3)
/* 80577B8C  7C 7F 1B 78 */	mr r31, r3
/* 80577B90  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80577B94  41 82 00 0C */	beq lbl_80577BA0
/* 80577B98  38 60 00 3D */	li r3, 0x3d
/* 80577B9C  48 00 00 C8 */	b lbl_80577C64
lbl_80577BA0:
/* 80577BA0  7C 83 23 78 */	mr r3, r4
/* 80577BA4  4B E6 1A 9D */	bl get_player_actor_withoutCheck
/* 80577BA8  7C 64 1B 79 */	or. r4, r3, r3
/* 80577BAC  40 82 00 0C */	bne lbl_80577BB8
/* 80577BB0  80 7F 09 94 */	lwz r3, 0x994(r31)
/* 80577BB4  48 00 00 B0 */	b lbl_80577C64
lbl_80577BB8:
/* 80577BB8  7F E3 FB 78 */	mr r3, r31
/* 80577BBC  4B FF F3 79 */	bl aNSM_check_safe_zone
/* 80577BC0  2C 03 00 01 */	cmpwi r3, 1
/* 80577BC4  40 82 00 0C */	bne lbl_80577BD0
/* 80577BC8  38 60 00 3D */	li r3, 0x3d
/* 80577BCC  48 00 00 98 */	b lbl_80577C64
lbl_80577BD0:
/* 80577BD0  3C 60 80 65 */	lis r3, lit_810@ha /* 0x806499D8@ha */
/* 80577BD4  C3 FF 00 BC */	lfs f31, 0xbc(r31)
/* 80577BD8  C0 03 99 D8 */	lfs f0, lit_810@l(r3)  /* 0x806499D8@l */
/* 80577BDC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80577BE0  41 80 00 10 */	blt lbl_80577BF0
/* 80577BE4  80 1F 09 C0 */	lwz r0, 0x9c0(r31)
/* 80577BE8  2C 00 00 00 */	cmpwi r0, 0
/* 80577BEC  40 82 00 0C */	bne lbl_80577BF8
lbl_80577BF0:
/* 80577BF0  38 60 00 3D */	li r3, 0x3d
/* 80577BF4  48 00 00 70 */	b lbl_80577C64
lbl_80577BF8:
/* 80577BF8  88 7F 09 A4 */	lbz r3, 0x9a4(r31)
/* 80577BFC  88 9F 09 A2 */	lbz r4, 0x9a2(r31)
/* 80577C00  7C 03 20 40 */	cmplw r3, r4
/* 80577C04  41 82 00 40 */	beq lbl_80577C44
/* 80577C08  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 80577C0C  2C 00 00 3F */	cmpwi r0, 0x3f
/* 80577C10  41 82 00 14 */	beq lbl_80577C24
/* 80577C14  2C 00 00 41 */	cmpwi r0, 0x41
/* 80577C18  41 82 00 0C */	beq lbl_80577C24
/* 80577C1C  4B FF F1 91 */	bl aNSM_get_next_zone
/* 80577C20  98 7F 09 A3 */	stb r3, 0x9a3(r31)
lbl_80577C24:
/* 80577C24  3C 60 80 65 */	lis r3, lit_811@ha /* 0x806499DC@ha */
/* 80577C28  C0 03 99 DC */	lfs f0, lit_811@l(r3)  /* 0x806499DC@l */
/* 80577C2C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80577C30  40 80 00 0C */	bge lbl_80577C3C
/* 80577C34  38 60 00 3F */	li r3, 0x3f
/* 80577C38  48 00 00 2C */	b lbl_80577C64
lbl_80577C3C:
/* 80577C3C  38 60 00 41 */	li r3, 0x41
/* 80577C40  48 00 00 24 */	b lbl_80577C64
lbl_80577C44:
/* 80577C44  3C 60 80 65 */	lis r3, lit_811@ha /* 0x806499DC@ha */
/* 80577C48  98 9F 09 A3 */	stb r4, 0x9a3(r31)
/* 80577C4C  C0 03 99 DC */	lfs f0, lit_811@l(r3)  /* 0x806499DC@l */
/* 80577C50  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80577C54  40 80 00 0C */	bge lbl_80577C60
/* 80577C58  38 60 00 3E */	li r3, 0x3e
/* 80577C5C  48 00 00 08 */	b lbl_80577C64
lbl_80577C60:
/* 80577C60  38 60 00 40 */	li r3, 0x40
lbl_80577C64:
/* 80577C64  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80577C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80577C6C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80577C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80577C74  7C 08 03 A6 */	mtlr r0
/* 80577C78  38 21 00 20 */	addi r1, r1, 0x20
/* 80577C7C  4E 80 00 20 */	blr 
