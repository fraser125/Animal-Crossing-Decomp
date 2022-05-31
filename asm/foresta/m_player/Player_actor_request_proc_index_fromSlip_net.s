lbl_804F1DC8:
/* 804F1DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1DCC  7C 08 02 A6 */	mflr r0
/* 804F1DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F1DD8  7C BF 2B 78 */	mr r31, r5
/* 804F1DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 804F1DE0  7C 9E 23 78 */	mr r30, r4
/* 804F1DE4  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804F1DE8  4B FE EB BD */	bl Player_actor_Get_ItemKind
/* 804F1DEC  7C 60 07 74 */	extsb r0, r3
/* 804F1DF0  38 60 00 00 */	li r3, 0
/* 804F1DF4  2C 00 00 09 */	cmpwi r0, 9
/* 804F1DF8  41 80 00 10 */	blt lbl_804F1E08
/* 804F1DFC  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F1E00  40 80 00 08 */	bge lbl_804F1E08
/* 804F1E04  38 60 00 01 */	li r3, 1
lbl_804F1E08:
/* 804F1E08  2C 03 00 00 */	cmpwi r3, 0
/* 804F1E0C  40 82 00 2C */	bne lbl_804F1E38
/* 804F1E10  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F1E14  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F1E18  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F1E1C  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F1E20  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F1E24  7F C3 F3 78 */	mr r3, r30
/* 804F1E28  38 80 00 00 */	li r4, 0
/* 804F1E2C  38 A0 00 22 */	li r5, 0x22
/* 804F1E30  4B FF 3D CD */	bl func_804E5BFC
/* 804F1E34  48 00 00 38 */	b lbl_804F1E6C
lbl_804F1E38:
/* 804F1E38  7F C3 F3 78 */	mr r3, r30
/* 804F1E3C  4B FE 27 BD */	bl Player_actor_CheckController_forNet
/* 804F1E40  2C 03 00 00 */	cmpwi r3, 0
/* 804F1E44  40 82 00 14 */	bne lbl_804F1E58
/* 804F1E48  7F C3 F3 78 */	mr r3, r30
/* 804F1E4C  38 80 00 16 */	li r4, 0x16
/* 804F1E50  48 00 0B 99 */	bl func_804F29E8
/* 804F1E54  48 00 00 18 */	b lbl_804F1E6C
lbl_804F1E58:
/* 804F1E58  2C 1F 00 00 */	cmpwi r31, 0
/* 804F1E5C  41 82 00 10 */	beq lbl_804F1E6C
/* 804F1E60  7F C3 F3 78 */	mr r3, r30
/* 804F1E64  38 80 00 0D */	li r4, 0xd
/* 804F1E68  48 00 00 BD */	bl func_804F1F24
lbl_804F1E6C:
/* 804F1E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F1E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F1E78  7C 08 03 A6 */	mtlr r0
/* 804F1E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1E80  4E 80 00 20 */	blr 
