lbl_805C6FFC:
/* 805C6FFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C7000  7C 08 02 A6 */	mflr r0
/* 805C7004  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C7008  39 61 00 30 */	addi r11, r1, 0x30
/* 805C700C  4B AD 3E BD */	bl func_8009AEC8
/* 805C7010  3C A0 80 6D */	lis r5, event_table@ha /* 0x806C87B0@ha */
/* 805C7014  7C 7E 1B 78 */	mr r30, r3
/* 805C7018  7C 9F 23 78 */	mr r31, r4
/* 805C701C  3B 40 00 00 */	li r26, 0
/* 805C7020  3B 85 87 B0 */	addi r28, r5, event_table@l /* 0x806C87B0@l */
/* 805C7024  3B A0 00 00 */	li r29, 0
lbl_805C7028:
/* 805C7028  7F 7C EA 14 */	add r27, r28, r29
/* 805C702C  88 7B 00 00 */	lbz r3, 0(r27)
/* 805C7030  88 9B 00 01 */	lbz r4, 1(r27)
/* 805C7034  38 03 FF FF */	addi r0, r3, -1
/* 805C7038  88 BB 00 02 */	lbz r5, 2(r27)
/* 805C703C  1C 00 00 73 */	mulli r0, r0, 0x73
/* 805C7040  7C 7E 02 14 */	add r3, r30, r0
/* 805C7044  4B FF FB 5D */	bl mDC_weekly_to_day_data
/* 805C7048  88 1B 00 03 */	lbz r0, 3(r27)
/* 805C704C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 805C7050  88 9B 00 00 */	lbz r4, 0(r27)
/* 805C7054  7F C3 F3 78 */	mr r3, r30
/* 805C7058  88 DB 00 04 */	lbz r6, 4(r27)
/* 805C705C  7C A5 02 14 */	add r5, r5, r0
/* 805C7060  38 E0 00 03 */	li r7, 3
/* 805C7064  39 00 00 00 */	li r8, 0
/* 805C7068  4B FF FC F5 */	bl mDC_set_event_day_data
/* 805C706C  3B 5A 00 01 */	addi r26, r26, 1
/* 805C7070  3B BD 00 05 */	addi r29, r29, 5
/* 805C7074  2C 1A 00 08 */	cmpwi r26, 8
/* 805C7078  41 80 FF B0 */	blt lbl_805C7028
/* 805C707C  3B 40 00 00 */	li r26, 0
/* 805C7080  3B BE 02 3F */	addi r29, r30, 0x23f
lbl_805C7084:
/* 805C7084  88 1D 00 00 */	lbz r0, 0(r29)
/* 805C7088  54 05 06 FF */	clrlwi. r5, r0, 0x1b
/* 805C708C  40 81 00 1C */	ble lbl_805C70A8
/* 805C7090  7F C3 F3 78 */	mr r3, r30
/* 805C7094  38 80 00 06 */	li r4, 6
/* 805C7098  38 C0 00 0C */	li r6, 0xc
/* 805C709C  38 E0 00 03 */	li r7, 3
/* 805C70A0  39 00 00 00 */	li r8, 0
/* 805C70A4  4B FF FC B9 */	bl mDC_set_event_day_data
lbl_805C70A8:
/* 805C70A8  3B 5A 00 07 */	addi r26, r26, 7
/* 805C70AC  3B BD 00 07 */	addi r29, r29, 7
/* 805C70B0  2C 1A 00 25 */	cmpwi r26, 0x25
/* 805C70B4  41 80 FF D0 */	blt lbl_805C7084
/* 805C70B8  3B 40 00 00 */	li r26, 0
/* 805C70BC  3B BE 04 7E */	addi r29, r30, 0x47e
lbl_805C70C0:
/* 805C70C0  88 1D 00 00 */	lbz r0, 0(r29)
/* 805C70C4  54 05 06 FF */	clrlwi. r5, r0, 0x1b
/* 805C70C8  40 81 00 1C */	ble lbl_805C70E4
/* 805C70CC  7F C3 F3 78 */	mr r3, r30
/* 805C70D0  38 80 00 0B */	li r4, 0xb
/* 805C70D4  38 C0 00 16 */	li r6, 0x16
/* 805C70D8  38 E0 00 03 */	li r7, 3
/* 805C70DC  39 00 00 00 */	li r8, 0
/* 805C70E0  4B FF FC 7D */	bl mDC_set_event_day_data
lbl_805C70E4:
/* 805C70E4  3B 5A 00 07 */	addi r26, r26, 7
/* 805C70E8  3B BD 00 07 */	addi r29, r29, 7
/* 805C70EC  2C 1A 00 25 */	cmpwi r26, 0x25
/* 805C70F0  41 80 FF D0 */	blt lbl_805C70C0
/* 805C70F4  57 FB 04 3E */	clrlwi r27, r31, 0x10
/* 805C70F8  7F 63 DB 78 */	mr r3, r27
/* 805C70FC  4B E4 07 CD */	bl lbRk_VernalEquinoxDay
/* 805C7100  7C 60 1B 78 */	mr r0, r3
/* 805C7104  7F C3 F3 78 */	mr r3, r30
/* 805C7108  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 805C710C  38 80 00 03 */	li r4, 3
/* 805C7110  38 C0 00 08 */	li r6, 8
/* 805C7114  38 E0 00 03 */	li r7, 3
/* 805C7118  39 00 00 00 */	li r8, 0
/* 805C711C  4B FF FC 41 */	bl mDC_set_event_day_data
/* 805C7120  7F 63 DB 78 */	mr r3, r27
/* 805C7124  4B E4 08 09 */	bl lbRk_AutumnalEquinoxDay
/* 805C7128  7C 60 1B 78 */	mr r0, r3
/* 805C712C  7F C3 F3 78 */	mr r3, r30
/* 805C7130  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 805C7134  38 80 00 09 */	li r4, 9
/* 805C7138  38 C0 00 14 */	li r6, 0x14
/* 805C713C  38 E0 00 03 */	li r7, 3
/* 805C7140  39 00 00 00 */	li r8, 0
/* 805C7144  4B FF FC 19 */	bl mDC_set_event_day_data
/* 805C7148  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C714C  7F C3 F3 78 */	mr r3, r30
/* 805C7150  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805C7154  38 C0 00 04 */	li r6, 4
/* 805C7158  3C A5 00 02 */	addis r5, r5, 2
/* 805C715C  38 80 00 07 */	li r4, 7
/* 805C7160  88 A5 41 8A */	lbz r5, 0x418a(r5)
/* 805C7164  38 E0 00 03 */	li r7, 3
/* 805C7168  39 00 00 00 */	li r8, 0
/* 805C716C  4B FF FB F1 */	bl mDC_set_event_day_data
/* 805C7170  7F 64 DB 78 */	mr r4, r27
/* 805C7174  38 61 00 08 */	addi r3, r1, 8
/* 805C7178  4B E4 08 19 */	bl lbRk_HarvestMoonDay
/* 805C717C  88 81 00 0A */	lbz r4, 0xa(r1)
/* 805C7180  7F C3 F3 78 */	mr r3, r30
/* 805C7184  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 805C7188  38 C0 00 11 */	li r6, 0x11
/* 805C718C  38 E0 00 03 */	li r7, 3
/* 805C7190  39 00 00 00 */	li r8, 0
/* 805C7194  4B FF FB C9 */	bl mDC_set_event_day_data
/* 805C7198  39 61 00 30 */	addi r11, r1, 0x30
/* 805C719C  4B AD 3D 79 */	bl func_8009AF14
/* 805C71A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C71A4  7C 08 03 A6 */	mtlr r0
/* 805C71A8  38 21 00 30 */	addi r1, r1, 0x30
/* 805C71AC  4E 80 00 20 */	blr 
