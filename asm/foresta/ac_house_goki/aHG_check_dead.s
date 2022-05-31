lbl_8050B794:
/* 8050B794  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050B798  7C 08 02 A6 */	mflr r0
/* 8050B79C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050B7A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8050B7A4  4B B8 F7 31 */	bl func_8009AED4
/* 8050B7A8  7C 7D 1B 78 */	mr r29, r3
/* 8050B7AC  7C 83 23 78 */	mr r3, r4
/* 8050B7B0  4B EC DE 91 */	bl get_player_actor_withoutCheck
/* 8050B7B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8050B7B8  7C 7F 1B 78 */	mr r31, r3
/* 8050B7BC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8050B7C0  3B C0 00 00 */	li r30, 0
/* 8050B7C4  3C 63 00 02 */	addis r3, r3, 2
/* 8050B7C8  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 8050B7CC  28 03 00 00 */	cmplwi r3, 0
/* 8050B7D0  41 82 00 20 */	beq lbl_8050B7F0
/* 8050B7D4  81 83 00 68 */	lwz r12, 0x68(r3)
/* 8050B7D8  38 7D 00 28 */	addi r3, r29, 0x28
/* 8050B7DC  7D 89 03 A6 */	mtctr r12
/* 8050B7E0  4E 80 04 21 */	bctrl 
/* 8050B7E4  2C 03 00 00 */	cmpwi r3, 0
/* 8050B7E8  41 82 00 08 */	beq lbl_8050B7F0
/* 8050B7EC  3B C0 00 01 */	li r30, 1
lbl_8050B7F0:
/* 8050B7F0  88 7D 00 9B */	lbz r3, 0x9b(r29)
/* 8050B7F4  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8050B7F8  40 82 00 0C */	bne lbl_8050B804
/* 8050B7FC  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8050B800  41 82 00 08 */	beq lbl_8050B808
lbl_8050B804:
/* 8050B804  3B C0 00 01 */	li r30, 1
lbl_8050B808:
/* 8050B808  28 1F 00 00 */	cmplwi r31, 0
/* 8050B80C  41 82 00 48 */	beq lbl_8050B854
/* 8050B810  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8050B814  3C 60 80 65 */	lis r3, lit_551@ha /* 0x80648E20@ha */
/* 8050B818  FC 20 02 10 */	fabs f1, f0
/* 8050B81C  C0 03 8E 20 */	lfs f0, lit_551@l(r3)  /* 0x80648E20@l */
/* 8050B820  FC 20 08 18 */	frsp f1, f1
/* 8050B824  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B828  41 80 00 2C */	blt lbl_8050B854
/* 8050B82C  3C 60 80 65 */	lis r3, lit_552@ha /* 0x80648E24@ha */
/* 8050B830  C0 3D 00 BC */	lfs f1, 0xbc(r29)
/* 8050B834  C0 03 8E 24 */	lfs f0, lit_552@l(r3)  /* 0x80648E24@l */
/* 8050B838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B83C  40 80 00 18 */	bge lbl_8050B854
/* 8050B840  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 8050B844  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8050B848  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050B84C  40 82 00 08 */	bne lbl_8050B854
/* 8050B850  3B C0 00 01 */	li r30, 1
lbl_8050B854:
/* 8050B854  7F C3 F3 78 */	mr r3, r30
/* 8050B858  39 61 00 20 */	addi r11, r1, 0x20
/* 8050B85C  4B B8 F6 C5 */	bl func_8009AF20
/* 8050B860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050B864  7C 08 03 A6 */	mtlr r0
/* 8050B868  38 21 00 20 */	addi r1, r1, 0x20
/* 8050B86C  4E 80 00 20 */	blr 
