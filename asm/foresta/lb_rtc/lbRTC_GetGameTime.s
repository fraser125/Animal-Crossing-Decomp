lbl_804064E4:
/* 804064E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804064E8  7C 08 02 A6 */	mflr r0
/* 804064EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804064F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804064F4  7C 7F 1B 78 */	mr r31, r3
/* 804064F8  4B FF FE A1 */	bl func_80406398
/* 804064FC  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80406500  38 A1 00 08 */	addi r5, r1, 8
/* 80406504  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80406508  3C E6 00 02 */	addis r7, r6, 2
/* 8040650C  80 C7 25 2C */	lwz r6, 0x252c(r7)
/* 80406510  80 07 25 28 */	lwz r0, 0x2528(r7)
/* 80406514  7C 84 30 14 */	addc r4, r4, r6
/* 80406518  7C 63 01 14 */	adde r3, r3, r0
/* 8040651C  4B C7 93 FD */	bl OSTicksToCalendarTime
/* 80406520  7F E4 FB 78 */	mr r4, r31
/* 80406524  38 61 00 08 */	addi r3, r1, 8
/* 80406528  4B FF FE B1 */	bl lbRTC_CalenderTimeToRTCTime
/* 8040652C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80406530  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80406534  7C 08 03 A6 */	mtlr r0
/* 80406538  38 21 00 40 */	addi r1, r1, 0x40
/* 8040653C  4E 80 00 20 */	blr 
