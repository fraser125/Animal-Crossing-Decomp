lbl_80489004:
/* 80489004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80489008  7C 08 02 A6 */	mflr r0
/* 8048900C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80489010  39 61 00 20 */	addi r11, r1, 0x20
/* 80489014  4B C1 1E BD */	bl func_8009AED0
/* 80489018  7C 7E 1B 78 */	mr r30, r3
/* 8048901C  3B A0 00 00 */	li r29, 0
/* 80489020  3B 80 00 00 */	li r28, 0
/* 80489024  38 60 00 6C */	li r3, 0x6c
/* 80489028  38 80 00 51 */	li r4, 0x51
/* 8048902C  4B F1 52 81 */	bl mEv_get_common_place
/* 80489030  7C 7F 1B 78 */	mr r31, r3
/* 80489034  7F C4 F3 78 */	mr r4, r30
/* 80489038  38 60 3B 72 */	li r3, 0x3b72
/* 8048903C  38 A0 00 03 */	li r5, 3
/* 80489040  4B FF F4 15 */	bl aQMgr_get_random_msg_no
/* 80489044  28 1F 00 00 */	cmplwi r31, 0
/* 80489048  7C 7E 1B 78 */	mr r30, r3
/* 8048904C  41 82 00 34 */	beq lbl_80489080
/* 80489050  80 1F 00 04 */	lwz r0, 4(r31)
/* 80489054  2C 00 00 00 */	cmpwi r0, 0
/* 80489058  40 81 00 10 */	ble lbl_80489068
/* 8048905C  2C 00 00 07 */	cmpwi r0, 7
/* 80489060  40 80 00 08 */	bge lbl_80489068
/* 80489064  7C 1D 03 78 */	mr r29, r0
lbl_80489068:
/* 80489068  80 1F 00 00 */	lwz r0, 0(r31)
/* 8048906C  2C 00 00 00 */	cmpwi r0, 0
/* 80489070  40 81 00 10 */	ble lbl_80489080
/* 80489074  2C 00 00 08 */	cmpwi r0, 8
/* 80489078  40 80 00 08 */	bge lbl_80489080
/* 8048907C  7C 1C 03 78 */	mr r28, r0
lbl_80489080:
/* 80489080  3C 60 81 1D */	lis r3, str0@ha /* 0x811CEBC0@ha */
/* 80489084  38 80 00 10 */	li r4, 0x10
/* 80489088  38 63 EB C0 */	addi r3, r3, str0@l /* 0x811CEBC0@l */
/* 8048908C  38 A0 00 20 */	li r5, 0x20
/* 80489090  4B F3 19 B9 */	bl mem_clear
/* 80489094  3C 60 81 1D */	lis r3, str0@ha /* 0x811CEBC0@ha */
/* 80489098  38 BD 07 75 */	addi r5, r29, 0x775
/* 8048909C  38 63 EB C0 */	addi r3, r3, str0@l /* 0x811CEBC0@l */
/* 804890A0  38 80 00 10 */	li r4, 0x10
/* 804890A4  4B F6 5C 29 */	bl mString_Load_StringFromRom
/* 804890A8  3C 60 81 1D */	lis r3, str1_671@ha /* 0x811CEBD0@ha */
/* 804890AC  38 80 00 10 */	li r4, 0x10
/* 804890B0  38 63 EB D0 */	addi r3, r3, str1_671@l /* 0x811CEBD0@l */
/* 804890B4  38 A0 00 20 */	li r5, 0x20
/* 804890B8  4B F3 19 91 */	bl mem_clear
/* 804890BC  3C 60 81 1D */	lis r3, str1_671@ha /* 0x811CEBD0@ha */
/* 804890C0  38 BC 07 6E */	addi r5, r28, 0x76e
/* 804890C4  38 63 EB D0 */	addi r3, r3, str1_671@l /* 0x811CEBD0@l */
/* 804890C8  38 80 00 10 */	li r4, 0x10
/* 804890CC  4B F6 5C 01 */	bl mString_Load_StringFromRom
/* 804890D0  4B F3 65 D9 */	bl func_803BF6A8
/* 804890D4  3C A0 81 1D */	lis r5, str0@ha /* 0x811CEBC0@ha */
/* 804890D8  38 80 00 01 */	li r4, 1
/* 804890DC  38 A5 EB C0 */	addi r5, r5, str0@l /* 0x811CEBC0@l */
/* 804890E0  38 C0 00 10 */	li r6, 0x10
/* 804890E4  4B F3 6B 71 */	bl mMsg_Set_free_str
/* 804890E8  4B F3 65 C1 */	bl func_803BF6A8
/* 804890EC  3C A0 81 1D */	lis r5, str1_671@ha /* 0x811CEBD0@ha */
/* 804890F0  38 80 00 00 */	li r4, 0
/* 804890F4  38 A5 EB D0 */	addi r5, r5, str1_671@l /* 0x811CEBD0@l */
/* 804890F8  38 C0 00 10 */	li r6, 0x10
/* 804890FC  4B F3 6B 59 */	bl mMsg_Set_free_str
/* 80489100  7F C3 F3 78 */	mr r3, r30
/* 80489104  39 61 00 20 */	addi r11, r1, 0x20
/* 80489108  4B C1 1E 15 */	bl func_8009AF1C
/* 8048910C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80489110  7C 08 03 A6 */	mtlr r0
/* 80489114  38 21 00 20 */	addi r1, r1, 0x20
/* 80489118  4E 80 00 20 */	blr 
