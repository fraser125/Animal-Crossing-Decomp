lbl_804B475C:
/* 804B475C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B4760  7C 08 02 A6 */	mflr r0
/* 804B4764  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B4768  39 61 00 40 */	addi r11, r1, 0x40
/* 804B476C  4B BE 67 59 */	bl func_8009AEC4
/* 804B4770  3D 20 81 14 */	lis r9, common_data@ha /* 0x81138538@ha */
/* 804B4774  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804B4778  39 29 85 38 */	addi r9, r9, common_data@l /* 0x81138538@l */
/* 804B477C  7C 79 1B 78 */	mr r25, r3
/* 804B4780  3D 29 00 02 */	addis r9, r9, 2
/* 804B4784  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804B4788  81 29 60 80 */	lwz r9, 0x6080(r9)
/* 804B478C  7C 9A 23 78 */	mr r26, r4
/* 804B4790  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804B4794  7C BB 2B 78 */	mr r27, r5
/* 804B4798  7C DC 33 78 */	mr r28, r6
/* 804B479C  7C FD 3B 78 */	mr r29, r7
/* 804B47A0  80 89 00 00 */	lwz r4, 0(r9)
/* 804B47A4  7D 1E 43 78 */	mr r30, r8
/* 804B47A8  3F E4 00 01 */	addis r31, r4, 1
/* 804B47AC  3B FF 25 98 */	addi r31, r31, 0x2598
/* 804B47B0  4B FF B9 51 */	bl func_804B0100
/* 804B47B4  93 A1 00 08 */	stw r29, 8(r1)
/* 804B47B8  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804B47BC  38 E3 F0 5C */	addi r7, r3, ZeroSVec@l /* 0x8065F05C@l */
/* 804B47C0  7F E4 FB 78 */	mr r4, r31
/* 804B47C4  93 C1 00 0C */	stw r30, 0xc(r1)
/* 804B47C8  7F 23 CB 78 */	mr r3, r25
/* 804B47CC  7F 45 D3 78 */	mr r5, r26
/* 804B47D0  7F 66 DB 78 */	mr r6, r27
/* 804B47D4  7F 8A E3 78 */	mr r10, r28
/* 804B47D8  39 01 00 10 */	addi r8, r1, 0x10
/* 804B47DC  39 20 00 FF */	li r9, 0xff
/* 804B47E0  48 00 02 0D */	bl bit_cmn_single_drawS
/* 804B47E4  7F 23 CB 78 */	mr r3, r25
/* 804B47E8  4B FF B9 69 */	bl bit_draw_ta_clr
/* 804B47EC  39 61 00 40 */	addi r11, r1, 0x40
/* 804B47F0  4B BE 67 21 */	bl func_8009AF10
/* 804B47F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B47F8  7C 08 03 A6 */	mtlr r0
/* 804B47FC  38 21 00 40 */	addi r1, r1, 0x40
/* 804B4800  4E 80 00 20 */	blr 
