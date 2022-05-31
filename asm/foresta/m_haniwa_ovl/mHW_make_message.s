lbl_805E00F8:
/* 805E00F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E00FC  7C 08 02 A6 */	mflr r0
/* 805E0100  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E0104  39 61 00 20 */	addi r11, r1, 0x20
/* 805E0108  4B AB AD C5 */	bl func_8009AECC
/* 805E010C  7C 7E 1B 78 */	mr r30, r3
/* 805E0110  7C 9B 23 78 */	mr r27, r4
/* 805E0114  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E0118  83 E3 09 9C */	lwz r31, 0x99c(r3)
/* 805E011C  83 A3 09 7C */	lwz r29, 0x97c(r3)
/* 805E0120  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 805E0124  38 63 00 01 */	addi r3, r3, 1
/* 805E0128  2C 03 00 16 */	cmpwi r3, 0x16
/* 805E012C  40 81 00 08 */	ble lbl_805E0134
/* 805E0130  38 60 00 16 */	li r3, 0x16
lbl_805E0134:
/* 805E0134  90 7F 00 14 */	stw r3, 0x14(r31)
/* 805E0138  80 1F 00 04 */	lwz r0, 4(r31)
/* 805E013C  83 9F 00 00 */	lwz r28, 0(r31)
/* 805E0140  2C 00 FF FF */	cmpwi r0, -1
/* 805E0144  41 82 00 10 */	beq lbl_805E0154
/* 805E0148  7F C3 F3 78 */	mr r3, r30
/* 805E014C  4B FF FD C1 */	bl mHW_make_message_interrupt
/* 805E0150  48 00 00 10 */	b lbl_805E0160
lbl_805E0154:
/* 805E0154  7F C3 F3 78 */	mr r3, r30
/* 805E0158  7F 64 DB 78 */	mr r4, r27
/* 805E015C  4B FF FE 7D */	bl mHW_make_message_normal
lbl_805E0160:
/* 805E0160  7C 03 E0 00 */	cmpw r3, r28
/* 805E0164  7C 7C 1B 78 */	mr r28, r3
/* 805E0168  40 82 00 40 */	bne lbl_805E01A8
/* 805E016C  2C 03 00 0C */	cmpwi r3, 0xc
/* 805E0170  40 82 00 50 */	bne lbl_805E01C0
/* 805E0174  80 7B 00 3C */	lwz r3, 0x3c(r27)
/* 805E0178  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E017C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805E0180  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 805E0184  1C 63 26 B0 */	mulli r3, r3, 0x26b0
/* 805E0188  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 805E018C  3C 84 00 01 */	addis r4, r4, 1
/* 805E0190  54 00 18 38 */	slwi r0, r0, 3
/* 805E0194  7C 64 1A 14 */	add r3, r4, r3
/* 805E0198  7C 63 02 14 */	add r3, r3, r0
/* 805E019C  80 03 C2 C0 */	lwz r0, -0x3d40(r3)
/* 805E01A0  7C 05 00 40 */	cmplw r5, r0
/* 805E01A4  41 82 00 1C */	beq lbl_805E01C0
lbl_805E01A8:
/* 805E01A8  7F C3 F3 78 */	mr r3, r30
/* 805E01AC  7F 84 E3 78 */	mr r4, r28
/* 805E01B0  4B FF FC B1 */	bl mHW_make_cond_message
/* 805E01B4  93 9F 00 00 */	stw r28, 0(r31)
/* 805E01B8  38 00 00 00 */	li r0, 0
/* 805E01BC  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_805E01C0:
/* 805E01C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E01C4  4B AB AD 55 */	bl func_8009AF18
/* 805E01C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E01CC  7C 08 03 A6 */	mtlr r0
/* 805E01D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805E01D4  4E 80 00 20 */	blr 
