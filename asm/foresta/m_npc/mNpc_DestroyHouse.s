lbl_803CF790:
/* 803CF790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CF794  7C 08 02 A6 */	mflr r0
/* 803CF798  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CF79C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF7A0  4B CC B7 31 */	bl func_8009AED0
/* 803CF7A4  88 E3 00 01 */	lbz r7, 1(r3)
/* 803CF7A8  88 83 00 02 */	lbz r4, 2(r3)
/* 803CF7AC  38 07 FF FF */	addi r0, r7, -1
/* 803CF7B0  88 A3 00 04 */	lbz r5, 4(r3)
/* 803CF7B4  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 803CF7B8  38 C4 FF FF */	addi r6, r4, -1
/* 803CF7BC  28 1F 00 05 */	cmplwi r31, 5
/* 803CF7C0  38 05 FF FF */	addi r0, r5, -1
/* 803CF7C4  8B A3 00 03 */	lbz r29, 3(r3)
/* 803CF7C8  54 DE 06 3E */	clrlwi r30, r6, 0x18
/* 803CF7CC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803CF7D0  40 80 00 88 */	bge lbl_803CF858
/* 803CF7D4  28 1E 00 06 */	cmplwi r30, 6
/* 803CF7D8  40 80 00 80 */	bge lbl_803CF858
/* 803CF7DC  28 1D 00 00 */	cmplwi r29, 0
/* 803CF7E0  41 82 00 78 */	beq lbl_803CF858
/* 803CF7E4  28 1D 00 0F */	cmplwi r29, 0xf
/* 803CF7E8  40 80 00 70 */	bge lbl_803CF858
/* 803CF7EC  28 1C 00 00 */	cmplwi r28, 0
/* 803CF7F0  41 82 00 68 */	beq lbl_803CF858
/* 803CF7F4  28 1C 00 0F */	cmplwi r28, 0xf
/* 803CF7F8  40 80 00 60 */	bge lbl_803CF858
/* 803CF7FC  7C E3 3B 78 */	mr r3, r7
/* 803CF800  4B FD 4E 6D */	bl mFM_GetReseveName
/* 803CF804  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CF808  57 E5 4B EC */	rlwinm r5, r31, 9, 0xf, 0x16
/* 803CF80C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803CF810  57 88 2C F4 */	rlwinm r8, r28, 5, 0x13, 0x1a
/* 803CF814  1C DE 0A 00 */	mulli r6, r30, 0xa00
/* 803CF818  57 A7 0D FC */	rlwinm r7, r29, 1, 0x17, 0x1e
/* 803CF81C  3C 84 00 01 */	addis r4, r4, 1
/* 803CF820  38 00 00 00 */	li r0, 0
/* 803CF824  7C 84 32 14 */	add r4, r4, r6
/* 803CF828  7C 84 2A 14 */	add r4, r4, r5
/* 803CF82C  7C 84 42 14 */	add r4, r4, r8
/* 803CF830  7C 84 3A 14 */	add r4, r4, r7
/* 803CF834  B0 64 37 A8 */	sth r3, 0x37a8(r4)
/* 803CF838  B0 04 37 C6 */	sth r0, 0x37c6(r4)
/* 803CF83C  B0 04 37 C8 */	sth r0, 0x37c8(r4)
/* 803CF840  B0 04 37 CA */	sth r0, 0x37ca(r4)
/* 803CF844  B0 04 37 A6 */	sth r0, 0x37a6(r4)
/* 803CF848  B0 04 37 AA */	sth r0, 0x37aa(r4)
/* 803CF84C  B0 04 37 86 */	sth r0, 0x3786(r4)
/* 803CF850  B0 04 37 88 */	sth r0, 0x3788(r4)
/* 803CF854  B0 04 37 8A */	sth r0, 0x378a(r4)
lbl_803CF858:
/* 803CF858  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF85C  4B CC B6 C1 */	bl func_8009AF1C
/* 803CF860  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CF864  7C 08 03 A6 */	mtlr r0
/* 803CF868  38 21 00 20 */	addi r1, r1, 0x20
/* 803CF86C  4E 80 00 20 */	blr 
