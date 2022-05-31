lbl_804FF938:
/* 804FF938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FF93C  7C 08 02 A6 */	mflr r0
/* 804FF940  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FF944  39 61 00 20 */	addi r11, r1, 0x20
/* 804FF948  4B B9 B5 89 */	bl func_8009AED0
/* 804FF94C  80 03 0D 1C */	lwz r0, 0xd1c(r3)
/* 804FF950  7C 7C 1B 78 */	mr r28, r3
/* 804FF954  3B DC 0D 1C */	addi r30, r28, 0xd1c
/* 804FF958  7C BD 2B 78 */	mr r29, r5
/* 804FF95C  2C 00 00 00 */	cmpwi r0, 0
/* 804FF960  3B FC 0D 20 */	addi r31, r28, 0xd20
/* 804FF964  41 82 00 84 */	beq lbl_804FF9E8
/* 804FF968  80 7C 0D 18 */	lwz r3, 0xd18(r28)
/* 804FF96C  38 03 00 01 */	addi r0, r3, 1
/* 804FF970  90 1C 0D 18 */	stw r0, 0xd18(r28)
/* 804FF974  80 1C 0D 18 */	lwz r0, 0xd18(r28)
/* 804FF978  2C 00 00 00 */	cmpwi r0, 0
/* 804FF97C  41 80 00 0C */	blt lbl_804FF988
/* 804FF980  2C 00 00 05 */	cmpwi r0, 5
/* 804FF984  41 80 00 0C */	blt lbl_804FF990
lbl_804FF988:
/* 804FF988  38 00 00 00 */	li r0, 0
/* 804FF98C  90 1C 0D 18 */	stw r0, 0xd18(r28)
lbl_804FF990:
/* 804FF990  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FF994  3C E0 80 65 */	lis r7, data_14594@ha /* 0x80648574@ha */
/* 804FF998  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804FF99C  80 1C 0D 18 */	lwz r0, 0xd18(r28)
/* 804FF9A0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FF9A4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FF9A8  38 C3 65 68 */	addi r6, r3, lit_604@l /* 0x80646568@l */
/* 804FF9AC  C0 7C 01 80 */	lfs f3, 0x180(r28)
/* 804FF9B0  38 67 85 74 */	addi r3, r7, data_14594@l /* 0x80648574@l */
/* 804FF9B4  FC 40 08 90 */	fmr f2, f1
/* 804FF9B8  7C A3 00 AE */	lbzx r5, r3, r0
/* 804FF9BC  7F 83 E3 78 */	mr r3, r28
/* 804FF9C0  C0 86 00 00 */	lfs f4, 0(r6)
/* 804FF9C4  38 E0 00 00 */	li r7, 0
/* 804FF9C8  7C A6 2B 78 */	mr r6, r5
/* 804FF9CC  39 00 00 00 */	li r8, 0
/* 804FF9D0  4B FD 6E 41 */	bl Player_actor_InitAnimation_Base2
/* 804FF9D4  38 60 00 00 */	li r3, 0
/* 804FF9D8  38 00 00 01 */	li r0, 1
/* 804FF9DC  90 7F 00 00 */	stw r3, 0(r31)
/* 804FF9E0  90 7E 00 00 */	stw r3, 0(r30)
/* 804FF9E4  90 1C 0D 3C */	stw r0, 0xd3c(r28)
lbl_804FF9E8:
/* 804FF9E8  7F 83 E3 78 */	mr r3, r28
/* 804FF9EC  7F A4 EB 78 */	mr r4, r29
/* 804FF9F0  4B FD 6B FD */	bl Player_actor_CulcAnimation_Base3
/* 804FF9F4  7C 7D 1B 79 */	or. r29, r3, r3
/* 804FF9F8  41 82 00 58 */	beq lbl_804FFA50
/* 804FF9FC  80 9F 00 00 */	lwz r4, 0(r31)
/* 804FFA00  2C 04 00 03 */	cmpwi r4, 3
/* 804FFA04  41 80 00 38 */	blt lbl_804FFA3C
/* 804FFA08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FFA0C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804FFA10  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804FFA14  38 60 00 1E */	li r3, 0x1e
/* 804FFA18  3C A4 00 02 */	addis r5, r4, 2
/* 804FFA1C  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804FFA20  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804FFA24  81 85 00 04 */	lwz r12, 4(r5)
/* 804FFA28  7D 89 03 A6 */	mtctr r12
/* 804FFA2C  4E 80 04 21 */	bctrl 
/* 804FFA30  38 00 00 01 */	li r0, 1
/* 804FFA34  90 1E 00 00 */	stw r0, 0(r30)
/* 804FFA38  48 00 00 18 */	b lbl_804FFA50
lbl_804FFA3C:
/* 804FFA3C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FFA40  38 04 00 01 */	addi r0, r4, 1
/* 804FFA44  90 1F 00 00 */	stw r0, 0(r31)
/* 804FFA48  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FFA4C  D0 1C 01 84 */	stfs f0, 0x184(r28)
lbl_804FFA50:
/* 804FFA50  7F A3 EB 78 */	mr r3, r29
/* 804FFA54  39 61 00 20 */	addi r11, r1, 0x20
/* 804FFA58  4B B9 B4 C5 */	bl func_8009AF1C
/* 804FFA5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FFA60  7C 08 03 A6 */	mtlr r0
/* 804FFA64  38 21 00 20 */	addi r1, r1, 0x20
/* 804FFA68  4E 80 00 20 */	blr 
