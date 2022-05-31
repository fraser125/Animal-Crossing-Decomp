lbl_805D9084:
/* 805D9084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D9088  7C 08 02 A6 */	mflr r0
/* 805D908C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D9090  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D9094  80 63 09 8C */	lwz r3, 0x98c(r3)
/* 805D9098  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D909C  2C 00 00 08 */	cmpwi r0, 8
/* 805D90A0  40 82 00 4C */	bne lbl_805D90EC
/* 805D90A4  88 63 00 13 */	lbz r3, 0x13(r3)
/* 805D90A8  4B DE 8D 01 */	bl mMsg_sound_voice_get_for_editor
/* 805D90AC  2C 03 00 85 */	cmpwi r3, 0x85
/* 805D90B0  41 82 00 18 */	beq lbl_805D90C8
/* 805D90B4  38 03 FF 80 */	addi r0, r3, -128
/* 805D90B8  28 00 00 03 */	cmplwi r0, 3
/* 805D90BC  40 81 00 0C */	ble lbl_805D90C8
/* 805D90C0  2C 03 FF FF */	cmpwi r3, -1
/* 805D90C4  40 82 00 08 */	bne lbl_805D90CC
lbl_805D90C8:
/* 805D90C8  38 60 00 86 */	li r3, 0x86
lbl_805D90CC:
/* 805D90CC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805D90D0  38 80 00 FF */	li r4, 0xff
/* 805D90D4  38 A0 00 FF */	li r5, 0xff
/* 805D90D8  38 C0 00 00 */	li r6, 0
/* 805D90DC  38 E0 00 20 */	li r7, 0x20
/* 805D90E0  39 00 00 01 */	li r8, 1
/* 805D90E4  48 05 4D 81 */	bl sAdo_VoiceSe
/* 805D90E8  48 00 00 70 */	b lbl_805D9158
lbl_805D90EC:
/* 805D90EC  2C 00 00 07 */	cmpwi r0, 7
/* 805D90F0  40 82 00 54 */	bne lbl_805D9144
/* 805D90F4  A8 63 00 20 */	lha r3, 0x20(r3)
/* 805D90F8  2C 03 FF FF */	cmpwi r3, -1
/* 805D90FC  41 82 00 3C */	beq lbl_805D9138
/* 805D9100  3C 80 80 6D */	lis r4, mED_exchange_se_list@ha /* 0x806CCBB4@ha */
/* 805D9104  38 84 CB B4 */	addi r4, r4, mED_exchange_se_list@l /* 0x806CCBB4@l */
/* 805D9108  7C 04 18 AE */	lbzx r0, r4, r3
/* 805D910C  28 00 00 00 */	cmplwi r0, 0
/* 805D9110  41 82 00 28 */	beq lbl_805D9138
/* 805D9114  4B DE 8C 95 */	bl mMsg_sound_voice_get_for_editor
/* 805D9118  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805D911C  38 80 00 FF */	li r4, 0xff
/* 805D9120  38 A0 00 FF */	li r5, 0xff
/* 805D9124  38 C0 00 00 */	li r6, 0
/* 805D9128  38 E0 00 20 */	li r7, 0x20
/* 805D912C  39 00 00 01 */	li r8, 1
/* 805D9130  48 05 4D 35 */	bl sAdo_VoiceSe
/* 805D9134  48 00 00 24 */	b lbl_805D9158
lbl_805D9138:
/* 805D9138  38 60 00 36 */	li r3, 0x36
/* 805D913C  48 05 4B C9 */	bl sAdo_SysTrgStart
/* 805D9140  48 00 00 18 */	b lbl_805D9158
lbl_805D9144:
/* 805D9144  3C 60 80 6D */	lis r3, se_no@ha /* 0x806CCBA0@ha */
/* 805D9148  54 00 08 3C */	slwi r0, r0, 1
/* 805D914C  38 63 CB A0 */	addi r3, r3, se_no@l /* 0x806CCBA0@l */
/* 805D9150  7C 63 02 2E */	lhzx r3, r3, r0
/* 805D9154  48 05 4B B1 */	bl sAdo_SysTrgStart
lbl_805D9158:
/* 805D9158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D915C  7C 08 03 A6 */	mtlr r0
/* 805D9160  38 21 00 10 */	addi r1, r1, 0x10
/* 805D9164  4E 80 00 20 */	blr 
