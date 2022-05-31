lbl_804D3910:
/* 804D3910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D3914  7C 08 02 A6 */	mflr r0
/* 804D3918  2C 03 00 04 */	cmpwi r3, 4
/* 804D391C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D3920  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D3924  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804D3928  40 80 00 F8 */	bge lbl_804D3A20
/* 804D392C  4B ED FC 8D */	bl mHS_get_arrange_idx
/* 804D3930  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 804D3934  3B C0 00 00 */	li r30, 0
/* 804D3938  1C A0 26 B0 */	mulli r5, r0, 0x26b0
/* 804D393C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D3940  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D3944  B3 C1 00 0A */	sth r30, 0xa(r1)
/* 804D3948  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 804D394C  7C 80 2A 14 */	add r4, r0, r5
/* 804D3950  3F E4 00 01 */	addis r31, r4, 1
/* 804D3954  39 43 2D 10 */	addi r10, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D3958  39 9F 9D 20 */	addi r12, r31, -25312
/* 804D395C  88 1F 9D 12 */	lbz r0, -0x62ee(r31)
/* 804D3960  39 7F 9F 48 */	addi r11, r31, -24760
/* 804D3964  3C 60 80 6A */	lis r3, series_name@ha /* 0x8069E46C@ha */
/* 804D3968  39 23 E4 6C */	addi r9, r3, series_name@l /* 0x8069E46C@l */
/* 804D396C  B3 C1 00 08 */	sth r30, 8(r1)
/* 804D3970  88 BF A5 C1 */	lbz r5, -0x5a3f(r31)
/* 804D3974  38 61 00 0C */	addi r3, r1, 0xc
/* 804D3978  88 DF A5 C0 */	lbz r6, -0x5a40(r31)
/* 804D397C  54 04 DF 7E */	rlwinm r4, r0, 0x1b, 0x1d, 0x1f
/* 804D3980  93 CA 00 04 */	stw r30, 4(r10)
/* 804D3984  38 E1 00 0A */	addi r7, r1, 0xa
/* 804D3988  39 01 00 08 */	addi r8, r1, 8
/* 804D398C  3B FF 9C E8 */	addi r31, r31, -25368
/* 804D3990  93 CA 00 00 */	stw r30, 0(r10)
/* 804D3994  39 40 00 FF */	li r10, 0xff
/* 804D3998  91 81 00 0C */	stw r12, 0xc(r1)
/* 804D399C  91 61 00 10 */	stw r11, 0x10(r1)
/* 804D39A0  4B FF FD D9 */	bl mMkRm_MarkRoomOneFloor
/* 804D39A4  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 804D39A8  7C 7E 1B 78 */	mr r30, r3
/* 804D39AC  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 804D39B0  28 00 00 03 */	cmplwi r0, 3
/* 804D39B4  40 82 00 40 */	bne lbl_804D39F4
/* 804D39B8  38 9F 08 E0 */	addi r4, r31, 0x8e0
/* 804D39BC  38 1F 0B 08 */	addi r0, r31, 0xb08
/* 804D39C0  3C 60 80 6A */	lis r3, series_name@ha /* 0x8069E46C@ha */
/* 804D39C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D39C8  39 23 E4 6C */	addi r9, r3, series_name@l /* 0x8069E46C@l */
/* 804D39CC  88 BF 11 81 */	lbz r5, 0x1181(r31)
/* 804D39D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D39D4  38 61 00 0C */	addi r3, r1, 0xc
/* 804D39D8  88 DF 11 80 */	lbz r6, 0x1180(r31)
/* 804D39DC  38 E1 00 0A */	addi r7, r1, 0xa
/* 804D39E0  39 01 00 08 */	addi r8, r1, 8
/* 804D39E4  38 80 00 01 */	li r4, 1
/* 804D39E8  39 40 00 F1 */	li r10, 0xf1
/* 804D39EC  4B FF FD 8D */	bl mMkRm_MarkRoomOneFloor
/* 804D39F0  7F DE 1A 14 */	add r30, r30, r3
lbl_804D39F4:
/* 804D39F4  88 1F 00 2A */	lbz r0, 0x2a(r31)
/* 804D39F8  3C 60 80 6A */	lis r3, series_name@ha /* 0x8069E46C@ha */
/* 804D39FC  A0 E1 00 0A */	lhz r7, 0xa(r1)
/* 804D3A00  38 C3 E4 6C */	addi r6, r3, series_name@l /* 0x8069E46C@l */
/* 804D3A04  A1 01 00 08 */	lhz r8, 8(r1)
/* 804D3A08  7F E3 FB 78 */	mr r3, r31
/* 804D3A0C  7F C4 F3 78 */	mr r4, r30
/* 804D3A10  54 05 DF 7E */	rlwinm r5, r0, 0x1b, 0x1d, 0x1f
/* 804D3A14  4B FF E9 9D */	bl mMkRm_SendMarkLetter
/* 804D3A18  7F C3 F3 78 */	mr r3, r30
/* 804D3A1C  48 00 00 08 */	b lbl_804D3A24
lbl_804D3A20:
/* 804D3A20  38 60 00 00 */	li r3, 0
lbl_804D3A24:
/* 804D3A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D3A28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D3A2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804D3A30  7C 08 03 A6 */	mtlr r0
/* 804D3A34  38 21 00 20 */	addi r1, r1, 0x20
/* 804D3A38  4E 80 00 20 */	blr 
