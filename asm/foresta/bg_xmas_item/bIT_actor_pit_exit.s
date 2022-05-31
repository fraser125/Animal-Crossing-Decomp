lbl_804CC804:
/* 804CC804  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CC808  7C 08 02 A6 */	mflr r0
/* 804CC80C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CC810  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC814  4B BC E6 C1 */	bl func_8009AED4
/* 804CC818  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804CC81C  7C 7D 1B 78 */	mr r29, r3
/* 804CC820  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804CC824  7C DE 33 78 */	mr r30, r6
/* 804CC828  3C C3 00 02 */	addis r6, r3, 2
/* 804CC82C  38 61 00 14 */	addi r3, r1, 0x14
/* 804CC830  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804CC834  83 E6 00 00 */	lwz r31, 0(r6)
/* 804CC838  4B ED 8C 45 */	bl mFI_UtNum2CenterWpos
/* 804CC83C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804CC840  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804CC844  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804CC848  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804CC84C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804CC850  38 61 00 08 */	addi r3, r1, 8
/* 804CC854  90 C1 00 08 */	stw r6, 8(r1)
/* 804CC858  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CC85C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804CC860  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CC864  4B EC 31 35 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804CC868  38 1D FF EF */	addi r0, r29, -17
/* 804CC86C  3C 7F 00 01 */	addis r3, r31, 1
/* 804CC870  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804CC874  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804CC878  38 04 00 11 */	addi r0, r4, 0x11
/* 804CC87C  7F C7 F3 78 */	mr r7, r30
/* 804CC880  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804CC884  38 C1 00 14 */	addi r6, r1, 0x14
/* 804CC888  38 80 00 04 */	li r4, 4
/* 804CC88C  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804CC890  4B FF E8 A1 */	bl bIT_actor_pit_entry
/* 804CC894  38 60 00 00 */	li r3, 0
/* 804CC898  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC89C  4B BC E6 85 */	bl func_8009AF20
/* 804CC8A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CC8A4  7C 08 03 A6 */	mtlr r0
/* 804CC8A8  38 21 00 30 */	addi r1, r1, 0x30
/* 804CC8AC  4E 80 00 20 */	blr 
