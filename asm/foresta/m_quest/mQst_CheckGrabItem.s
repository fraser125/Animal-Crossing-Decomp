lbl_803E30F8:
/* 803E30F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E30FC  7C 08 02 A6 */	mflr r0
/* 803E3100  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3104  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3108  4B CB 7D C1 */	bl func_8009AEC8
/* 803E310C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E3110  7C 9F 23 79 */	or. r31, r4, r4
/* 803E3114  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E3118  3C 80 81 17 */	lis r4, l_mqst_grab@ha /* 0x811713E8@ha */
/* 803E311C  3C A5 00 02 */	addis r5, r5, 2
/* 803E3120  7C 7E 1B 78 */	mr r30, r3
/* 803E3124  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 803E3128  3B 84 13 E8 */	addi r28, r4, l_mqst_grab@l /* 0x811713E8@l */
/* 803E312C  83 45 00 88 */	lwz r26, 0x88(r5)
/* 803E3130  3B A5 00 94 */	addi r29, r5, 0x94
/* 803E3134  3B 65 02 EC */	addi r27, r5, 0x2ec
/* 803E3138  41 80 00 E8 */	blt lbl_803E3220
/* 803E313C  2C 1F 00 0F */	cmpwi r31, 0xf
/* 803E3140  40 80 00 E0 */	bge lbl_803E3220
/* 803E3144  7F 83 E3 78 */	mr r3, r28
/* 803E3148  4B FF FF 41 */	bl mQst_ClearGrabItemInfo_common
/* 803E314C  1C 1F 00 28 */	mulli r0, r31, 0x28
/* 803E3150  7F BD 02 14 */	add r29, r29, r0
/* 803E3154  7F A3 EB 78 */	mr r3, r29
/* 803E3158  4B FF FA 79 */	bl mQst_CheckFreeQuest
/* 803E315C  2C 03 00 00 */	cmpwi r3, 0
/* 803E3160  40 82 00 2C */	bne lbl_803E318C
/* 803E3164  38 00 00 00 */	li r0, 0
/* 803E3168  B3 DC 00 00 */	sth r30, 0(r28)
/* 803E316C  7F A4 EB 78 */	mr r4, r29
/* 803E3170  38 7C 00 0C */	addi r3, r28, 0xc
/* 803E3174  93 FC 00 04 */	stw r31, 4(r28)
/* 803E3178  90 1C 00 08 */	stw r0, 8(r28)
/* 803E317C  4B FF F9 59 */	bl mQst_CopyDelivery
/* 803E3180  7F A3 EB 78 */	mr r3, r29
/* 803E3184  38 80 00 01 */	li r4, 1
/* 803E3188  4B FF F7 61 */	bl mQst_ClearDelivery
lbl_803E318C:
/* 803E318C  80 1C 00 08 */	lwz r0, 8(r28)
/* 803E3190  28 00 00 03 */	cmplwi r0, 3
/* 803E3194  40 82 00 74 */	bne lbl_803E3208
/* 803E3198  57 E0 08 3C */	slwi r0, r31, 1
/* 803E319C  7F 40 04 30 */	srw r0, r26, r0
/* 803E31A0  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E31A4  28 00 00 02 */	cmplwi r0, 2
/* 803E31A8  40 82 00 60 */	bne lbl_803E3208
/* 803E31AC  3B 40 00 00 */	li r26, 0
/* 803E31B0  57 DD 04 3E */	clrlwi r29, r30, 0x10
lbl_803E31B4:
/* 803E31B4  7F 63 DB 78 */	mr r3, r27
/* 803E31B8  4B FF FA 19 */	bl mQst_CheckFreeQuest
/* 803E31BC  2C 03 00 00 */	cmpwi r3, 0
/* 803E31C0  40 82 00 38 */	bne lbl_803E31F8
/* 803E31C4  88 1B 00 2A */	lbz r0, 0x2a(r27)
/* 803E31C8  54 00 C0 0A */	rlwinm r0, r0, 0x18, 0, 5
/* 803E31CC  7C 00 DE 70 */	srawi r0, r0, 0x1b
/* 803E31D0  7C 00 F8 00 */	cmpw r0, r31
/* 803E31D4  40 82 00 24 */	bne lbl_803E31F8
/* 803E31D8  A0 1B 00 28 */	lhz r0, 0x28(r27)
/* 803E31DC  7C 00 E8 40 */	cmplw r0, r29
/* 803E31E0  40 82 00 18 */	bne lbl_803E31F8
/* 803E31E4  38 00 00 01 */	li r0, 1
/* 803E31E8  B3 DC 00 00 */	sth r30, 0(r28)
/* 803E31EC  93 5C 00 04 */	stw r26, 4(r28)
/* 803E31F0  90 1C 00 08 */	stw r0, 8(r28)
/* 803E31F4  48 00 00 14 */	b lbl_803E3208
lbl_803E31F8:
/* 803E31F8  3B 5A 00 01 */	addi r26, r26, 1
/* 803E31FC  3B 7B 00 58 */	addi r27, r27, 0x58
/* 803E3200  2C 1A 00 05 */	cmpwi r26, 5
/* 803E3204  41 80 FF B0 */	blt lbl_803E31B4
lbl_803E3208:
/* 803E3208  80 1C 00 08 */	lwz r0, 8(r28)
/* 803E320C  28 00 00 03 */	cmplwi r0, 3
/* 803E3210  40 82 00 10 */	bne lbl_803E3220
/* 803E3214  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803E3218  41 82 00 08 */	beq lbl_803E3220
/* 803E321C  B3 DC 00 00 */	sth r30, 0(r28)
lbl_803E3220:
/* 803E3220  39 61 00 20 */	addi r11, r1, 0x20
/* 803E3224  4B CB 7C F1 */	bl func_8009AF14
/* 803E3228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E322C  7C 08 03 A6 */	mtlr r0
/* 803E3230  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3234  4E 80 00 20 */	blr 
