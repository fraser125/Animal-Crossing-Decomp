lbl_8048FF4C:
/* 8048FF4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048FF50  7C 08 02 A6 */	mflr r0
/* 8048FF54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048FF58  39 61 00 30 */	addi r11, r1, 0x30
/* 8048FF5C  4B C0 AF 69 */	bl func_8009AEC4
/* 8048FF60  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8048FF64  3C 80 80 69 */	lis r4, constellation_table@ha /* 0x8068B324@ha */
/* 8048FF68  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8048FF6C  7C 7A 1B 78 */	mr r26, r3
/* 8048FF70  3C 65 00 02 */	addis r3, r5, 2
/* 8048FF74  38 04 B3 24 */	addi r0, r4, constellation_table@l /* 0x8068B324@l */
/* 8048FF78  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 8048FF7C  7C 1E 03 78 */	mr r30, r0
/* 8048FF80  3B A0 00 00 */	li r29, 0
/* 8048FF84  3B 20 00 00 */	li r25, 0
/* 8048FF88  8B 9F 10 A6 */	lbz r28, 0x10a6(r31)
/* 8048FF8C  8B 7F 10 A7 */	lbz r27, 0x10a7(r31)
lbl_8048FF90:
/* 8048FF90  88 DA 00 00 */	lbz r6, 0(r26)
/* 8048FF94  28 06 00 0C */	cmplwi r6, 0xc
/* 8048FF98  40 80 00 30 */	bge lbl_8048FFC8
/* 8048FF9C  3C 80 80 69 */	lis r4, base_str_no_1231@ha /* 0x8068B33C@ha */
/* 8048FFA0  3C 60 80 64 */	lis r3, lit_1262@ha /* 0x80644C4C@ha */
/* 8048FFA4  38 A4 B3 3C */	addi r5, r4, base_str_no_1231@l /* 0x8068B33C@l */
/* 8048FFA8  3C E0 81 1D */	lis r7, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FFAC  38 83 4C 4C */	addi r4, r3, lit_1262@l /* 0x80644C4C@l */
/* 8048FFB0  7C A5 C8 2E */	lwzx r5, r5, r25
/* 8048FFB4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8048FFB8  38 67 EB E0 */	addi r3, r7, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FFBC  7F A4 EB 78 */	mr r4, r29
/* 8048FFC0  4B FF FC 89 */	bl aQMgr_set_random_string
/* 8048FFC4  48 00 00 30 */	b lbl_8048FFF4
lbl_8048FFC8:
/* 8048FFC8  3C 80 80 69 */	lis r4, base_str_no_1231@ha /* 0x8068B33C@ha */
/* 8048FFCC  3C 60 80 64 */	lis r3, lit_1263@ha /* 0x80644C50@ha */
/* 8048FFD0  38 A4 B3 3C */	addi r5, r4, base_str_no_1231@l /* 0x8068B33C@l */
/* 8048FFD4  3C C0 81 1D */	lis r6, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8048FFD8  38 83 4C 50 */	addi r4, r3, lit_1263@l /* 0x80644C50@l */
/* 8048FFDC  7C A5 C8 2E */	lwzx r5, r5, r25
/* 8048FFE0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8048FFE4  38 66 EB E0 */	addi r3, r6, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8048FFE8  7F A4 EB 78 */	mr r4, r29
/* 8048FFEC  38 C0 FF FF */	li r6, -1
/* 8048FFF0  4B FF FC 59 */	bl aQMgr_set_random_string
lbl_8048FFF4:
/* 8048FFF4  3B BD 00 01 */	addi r29, r29, 1
/* 8048FFF8  98 7A 00 00 */	stb r3, 0(r26)
/* 8048FFFC  2C 1D 00 02 */	cmpwi r29, 2
/* 80490000  3B 5A 00 01 */	addi r26, r26, 1
/* 80490004  3B 39 00 04 */	addi r25, r25, 4
/* 80490008  41 80 FF 88 */	blt lbl_8048FF90
/* 8049000C  38 00 00 0C */	li r0, 0xc
/* 80490010  38 A0 00 00 */	li r5, 0
/* 80490014  38 80 00 00 */	li r4, 0
/* 80490018  7C 09 03 A6 */	mtctr r0
lbl_8049001C:
/* 8049001C  88 7F 10 A6 */	lbz r3, 0x10a6(r31)
/* 80490020  88 1E 00 00 */	lbz r0, 0(r30)
/* 80490024  7C 03 00 40 */	cmplw r3, r0
/* 80490028  41 80 00 18 */	blt lbl_80490040
/* 8049002C  40 82 00 1C */	bne lbl_80490048
/* 80490030  88 7F 10 A7 */	lbz r3, 0x10a7(r31)
/* 80490034  88 1E 00 01 */	lbz r0, 1(r30)
/* 80490038  7C 03 00 40 */	cmplw r3, r0
/* 8049003C  41 81 00 0C */	bgt lbl_80490048
lbl_80490040:
/* 80490040  7C 85 23 78 */	mr r5, r4
/* 80490044  48 00 00 10 */	b lbl_80490054
lbl_80490048:
/* 80490048  3B DE 00 02 */	addi r30, r30, 2
/* 8049004C  38 84 00 01 */	addi r4, r4, 1
/* 80490050  42 00 FF CC */	bdnz lbl_8049001C
lbl_80490054:
/* 80490054  34 A5 FF FD */	addic. r5, r5, -3
/* 80490058  40 80 00 08 */	bge lbl_80490060
/* 8049005C  38 A5 00 0C */	addi r5, r5, 0xc
lbl_80490060:
/* 80490060  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 80490064  38 A5 04 94 */	addi r5, r5, 0x494
/* 80490068  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8049006C  38 80 00 10 */	li r4, 0x10
/* 80490070  4B F5 EC 5D */	bl mString_Load_StringFromRom
/* 80490074  4B F2 F6 35 */	bl func_803BF6A8
/* 80490078  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 8049007C  38 80 00 02 */	li r4, 2
/* 80490080  38 A5 EB E0 */	addi r5, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 80490084  38 C0 00 10 */	li r6, 0x10
/* 80490088  4B F2 FD 4D */	bl mMsg_Set_item_str
/* 8049008C  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 80490090  38 80 00 10 */	li r4, 0x10
/* 80490094  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 80490098  38 A0 00 20 */	li r5, 0x20
/* 8049009C  4B F2 A9 AD */	bl mem_clear
/* 804900A0  28 1C 00 01 */	cmplwi r28, 1
/* 804900A4  41 80 00 0C */	blt lbl_804900B0
/* 804900A8  28 1C 00 0C */	cmplwi r28, 0xc
/* 804900AC  40 81 00 08 */	ble lbl_804900B4
lbl_804900B0:
/* 804900B0  3B 80 00 01 */	li r28, 1
lbl_804900B4:
/* 804900B4  38 1C FF FF */	addi r0, r28, -1
/* 804900B8  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 804900BC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804900C0  38 80 00 10 */	li r4, 0x10
/* 804900C4  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 804900C8  38 A5 06 6D */	addi r5, r5, 0x66d
/* 804900CC  4B F5 EC 01 */	bl mString_Load_StringFromRom
/* 804900D0  4B F2 F5 D9 */	bl func_803BF6A8
/* 804900D4  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 804900D8  38 80 00 03 */	li r4, 3
/* 804900DC  38 A5 EB E0 */	addi r5, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 804900E0  38 C0 00 10 */	li r6, 0x10
/* 804900E4  4B F2 FC F1 */	bl mMsg_Set_item_str
/* 804900E8  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 804900EC  38 80 00 10 */	li r4, 0x10
/* 804900F0  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 804900F4  38 A0 00 20 */	li r5, 0x20
/* 804900F8  4B F2 A9 51 */	bl mem_clear
/* 804900FC  28 1B 00 01 */	cmplwi r27, 1
/* 80490100  41 80 00 0C */	blt lbl_8049010C
/* 80490104  28 1B 00 1F */	cmplwi r27, 0x1f
/* 80490108  40 81 00 08 */	ble lbl_80490110
lbl_8049010C:
/* 8049010C  3B 60 00 01 */	li r27, 1
lbl_80490110:
/* 80490110  38 1B FF FF */	addi r0, r27, -1
/* 80490114  3C 60 81 1D */	lis r3, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 80490118  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8049011C  38 80 00 10 */	li r4, 0x10
/* 80490120  38 63 EB E0 */	addi r3, r3, data_811CEBE0@l /* 0x811CEBE0@l */
/* 80490124  38 A5 06 4E */	addi r5, r5, 0x64e
/* 80490128  4B F5 EB A5 */	bl mString_Load_StringFromRom
/* 8049012C  4B F2 F5 7D */	bl func_803BF6A8
/* 80490130  3C A0 81 1D */	lis r5, data_811CEBE0@ha /* 0x811CEBE0@ha */
/* 80490134  38 80 00 04 */	li r4, 4
/* 80490138  38 A5 EB E0 */	addi r5, r5, data_811CEBE0@l /* 0x811CEBE0@l */
/* 8049013C  38 C0 00 10 */	li r6, 0x10
/* 80490140  4B F2 FC 95 */	bl mMsg_Set_item_str
/* 80490144  39 61 00 30 */	addi r11, r1, 0x30
/* 80490148  4B C0 AD C9 */	bl func_8009AF10
/* 8049014C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80490150  7C 08 03 A6 */	mtlr r0
/* 80490154  38 21 00 30 */	addi r1, r1, 0x30
/* 80490158  4E 80 00 20 */	blr 
