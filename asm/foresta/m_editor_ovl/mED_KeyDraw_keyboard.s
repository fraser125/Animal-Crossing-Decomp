lbl_805DB194:
/* 805DB194  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805DB198  7C 08 02 A6 */	mflr r0
/* 805DB19C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805DB1A0  39 61 00 30 */	addi r11, r1, 0x30
/* 805DB1A4  4B AB FD 1D */	bl func_8009AEC0
/* 805DB1A8  88 04 00 05 */	lbz r0, 5(r4)
/* 805DB1AC  3C C0 80 A7 */	lis r6, kai_sousa2_v@ha /* 0x80A6DF20@ha */
/* 805DB1B0  3C A0 80 6D */	lis r5, model_type@ha /* 0x806CCEA8@ha */
/* 805DB1B4  7C 78 1B 78 */	mr r24, r3
/* 805DB1B8  28 00 00 00 */	cmplwi r0, 0
/* 805DB1BC  38 66 DF 20 */	addi r3, r6, kai_sousa2_v@l /* 0x80A6DF20@l */
/* 805DB1C0  38 05 CE A8 */	addi r0, r5, model_type@l /* 0x806CCEA8@l */
/* 805DB1C4  3B 40 00 01 */	li r26, 1
/* 805DB1C8  7C 7F 1B 78 */	mr r31, r3
/* 805DB1CC  38 C0 00 00 */	li r6, 0
/* 805DB1D0  7C 1E 03 78 */	mr r30, r0
/* 805DB1D4  40 82 00 14 */	bne lbl_805DB1E8
/* 805DB1D8  88 04 00 06 */	lbz r0, 6(r4)
/* 805DB1DC  28 00 00 01 */	cmplwi r0, 1
/* 805DB1E0  40 82 00 08 */	bne lbl_805DB1E8
/* 805DB1E4  38 C0 00 01 */	li r6, 1
lbl_805DB1E8:
/* 805DB1E8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DB1EC  8B A4 00 02 */	lbz r29, 2(r4)
/* 805DB1F0  3C A0 80 6D */	lis r5, sel_col@ha /* 0x806CCED0@ha */
/* 805DB1F4  8B 84 00 03 */	lbz r28, 3(r4)
/* 805DB1F8  83 38 02 D0 */	lwz r25, 0x2d0(r24)
/* 805DB1FC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DB200  54 C6 10 3A */	slwi r6, r6, 2
/* 805DB204  38 85 CE D0 */	addi r4, r5, sel_col@l /* 0x806CCED0@l */
/* 805DB208  90 19 00 00 */	stw r0, 0(r25)
/* 805DB20C  7F 03 C3 78 */	mr r3, r24
/* 805DB210  7F 64 32 14 */	add r27, r4, r6
/* 805DB214  4B E3 21 C1 */	bl _Matrix_to_Mtx_new
/* 805DB218  3C 80 D7 00 */	lis r4, 0xD700 /* 0xD7000002@ha */
/* 805DB21C  90 79 00 04 */	stw r3, 4(r25)
/* 805DB220  38 04 00 02 */	addi r0, r4, 0x0002 /* 0xD7000002@l */
/* 805DB224  3C 60 FF FE */	lis r3, 0xFFFE /* 0xFFFDF238@ha */
/* 805DB228  90 19 00 08 */	stw r0, 8(r25)
/* 805DB22C  38 00 00 00 */	li r0, 0
/* 805DB230  38 E3 F2 38 */	addi r7, r3, 0xF238 /* 0xFFFDF238@l */
/* 805DB234  3C A0 FD 84 */	lis r5, 0xFD84 /* 0xFD840C0F@ha */
/* 805DB238  3C 80 FD 00 */	lis r4, 0xFD00 /* 0xFCFFFFFF@ha */
/* 805DB23C  90 19 00 0C */	stw r0, 0xc(r25)
/* 805DB240  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0xFCFFFFFF@l */
/* 805DB244  3C C0 80 A7 */	lis r6, data_80A6DEA0@ha /* 0x80A6DEA0@ha */
/* 805DB248  90 19 00 10 */	stw r0, 0x10(r25)
/* 805DB24C  3C 80 D2 F1 */	lis r4, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805DB250  39 04 FA 00 */	addi r8, r4, 0xFA00 /* 0xD2F0FA00@l */
/* 805DB254  3C 60 01 00 */	lis r3, 0x0100 /* 0x01004008@ha */
/* 805DB258  90 F9 00 14 */	stw r7, 0x14(r25)
/* 805DB25C  38 06 DE A0 */	addi r0, r6, data_80A6DEA0@l /* 0x80A6DEA0@l */
/* 805DB260  39 25 0C 0F */	addi r9, r5, 0x0C0F /* 0xFD840C0F@l */
/* 805DB264  38 E3 40 08 */	addi r7, r3, 0x4008 /* 0x01004008@l */
/* 805DB268  38 80 00 00 */	li r4, 0
/* 805DB26C  3B 39 00 18 */	addi r25, r25, 0x18
lbl_805DB270:
/* 805DB270  38 A0 00 0A */	li r5, 0xa
/* 805DB274  38 60 00 00 */	li r3, 0
/* 805DB278  7C A9 03 A6 */	mtctr r5
lbl_805DB27C:
/* 805DB27C  7C 03 E8 00 */	cmpw r3, r29
/* 805DB280  40 82 00 44 */	bne lbl_805DB2C4
/* 805DB284  7C 04 E0 00 */	cmpw r4, r28
/* 805DB288  40 82 00 3C */	bne lbl_805DB2C4
/* 805DB28C  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 805DB290  3B 40 00 01 */	li r26, 1
/* 805DB294  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0xFA0000FF@l */
/* 805DB298  90 B9 00 00 */	stw r5, 0(r25)
/* 805DB29C  88 BB 00 01 */	lbz r5, 1(r27)
/* 805DB2A0  88 DB 00 00 */	lbz r6, 0(r27)
/* 805DB2A4  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 805DB2A8  89 5B 00 02 */	lbz r10, 2(r27)
/* 805DB2AC  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 805DB2B0  51 45 44 2E */	rlwimi r5, r10, 8, 0x10, 0x17
/* 805DB2B4  60 A5 00 FF */	ori r5, r5, 0xff
/* 805DB2B8  90 B9 00 04 */	stw r5, 4(r25)
/* 805DB2BC  3B 39 00 08 */	addi r25, r25, 8
/* 805DB2C0  48 00 00 28 */	b lbl_805DB2E8
lbl_805DB2C4:
/* 805DB2C4  2C 1A 00 01 */	cmpwi r26, 1
/* 805DB2C8  40 82 00 20 */	bne lbl_805DB2E8
/* 805DB2CC  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 805DB2D0  38 A0 FF FF */	li r5, -1
/* 805DB2D4  38 C6 00 FF */	addi r6, r6, 0x00FF /* 0xFA0000FF@l */
/* 805DB2D8  3B 40 00 00 */	li r26, 0
/* 805DB2DC  90 D9 00 00 */	stw r6, 0(r25)
/* 805DB2E0  90 B9 00 04 */	stw r5, 4(r25)
/* 805DB2E4  3B 39 00 08 */	addi r25, r25, 8
lbl_805DB2E8:
/* 805DB2E8  91 39 00 00 */	stw r9, 0(r25)
/* 805DB2EC  90 19 00 04 */	stw r0, 4(r25)
/* 805DB2F0  91 19 00 08 */	stw r8, 8(r25)
/* 805DB2F4  90 F9 00 10 */	stw r7, 0x10(r25)
/* 805DB2F8  93 F9 00 14 */	stw r31, 0x14(r25)
/* 805DB2FC  88 BE 00 00 */	lbz r5, 0(r30)
/* 805DB300  28 05 00 00 */	cmplwi r5, 0
/* 805DB304  41 82 00 20 */	beq lbl_805DB324
/* 805DB308  3C C0 0A 02 */	lis r6, 0xa02
/* 805DB30C  3C A0 40 19 */	lis r5, 0x4019 /* 0x40188200@ha */
/* 805DB310  90 D9 00 18 */	stw r6, 0x18(r25)
/* 805DB314  38 A5 82 00 */	addi r5, r5, 0x8200 /* 0x40188200@l */
/* 805DB318  90 B9 00 1C */	stw r5, 0x1c(r25)
/* 805DB31C  3B 39 00 20 */	addi r25, r25, 0x20
/* 805DB320  48 00 00 1C */	b lbl_805DB33C
lbl_805DB324:
/* 805DB324  3C C0 0A 02 */	lis r6, 0xa02
/* 805DB328  3C A0 43 09 */	lis r5, 0x4309 /* 0x43088200@ha */
/* 805DB32C  90 D9 00 18 */	stw r6, 0x18(r25)
/* 805DB330  38 A5 82 00 */	addi r5, r5, 0x8200 /* 0x43088200@l */
/* 805DB334  90 B9 00 1C */	stw r5, 0x1c(r25)
/* 805DB338  3B 39 00 20 */	addi r25, r25, 0x20
lbl_805DB33C:
/* 805DB33C  3B FF 00 40 */	addi r31, r31, 0x40
/* 805DB340  3B DE 00 01 */	addi r30, r30, 1
/* 805DB344  38 63 00 01 */	addi r3, r3, 1
/* 805DB348  42 00 FF 34 */	bdnz lbl_805DB27C
/* 805DB34C  38 84 00 01 */	addi r4, r4, 1
/* 805DB350  2C 04 00 04 */	cmpwi r4, 4
/* 805DB354  41 80 FF 1C */	blt lbl_805DB270
/* 805DB358  93 38 02 D0 */	stw r25, 0x2d0(r24)
/* 805DB35C  39 61 00 30 */	addi r11, r1, 0x30
/* 805DB360  4B AB FB AD */	bl func_8009AF0C
/* 805DB364  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805DB368  7C 08 03 A6 */	mtlr r0
/* 805DB36C  38 21 00 30 */	addi r1, r1, 0x30
/* 805DB370  4E 80 00 20 */	blr 
