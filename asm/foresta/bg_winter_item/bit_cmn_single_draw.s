lbl_804C35D8:
/* 804C35D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C35DC  7C 08 02 A6 */	mflr r0
/* 804C35E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C35E4  39 61 00 40 */	addi r11, r1, 0x40
/* 804C35E8  4B BD 78 DD */	bl func_8009AEC4
/* 804C35EC  3D 20 81 14 */	lis r9, common_data@ha /* 0x81138538@ha */
/* 804C35F0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804C35F4  39 29 85 38 */	addi r9, r9, common_data@l /* 0x81138538@l */
/* 804C35F8  7C 79 1B 78 */	mr r25, r3
/* 804C35FC  3D 29 00 02 */	addis r9, r9, 2
/* 804C3600  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804C3604  81 29 60 80 */	lwz r9, 0x6080(r9)
/* 804C3608  7C 9A 23 78 */	mr r26, r4
/* 804C360C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804C3610  7C BB 2B 78 */	mr r27, r5
/* 804C3614  7C DC 33 78 */	mr r28, r6
/* 804C3618  7C FD 3B 78 */	mr r29, r7
/* 804C361C  80 89 00 00 */	lwz r4, 0(r9)
/* 804C3620  7D 1E 43 78 */	mr r30, r8
/* 804C3624  3F E4 00 01 */	addis r31, r4, 1
/* 804C3628  3B FF 25 98 */	addi r31, r31, 0x2598
/* 804C362C  4B FF B9 51 */	bl func_804BEF7C
/* 804C3630  93 A1 00 08 */	stw r29, 8(r1)
/* 804C3634  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804C3638  38 E3 F0 5C */	addi r7, r3, ZeroSVec@l /* 0x8065F05C@l */
/* 804C363C  7F E4 FB 78 */	mr r4, r31
/* 804C3640  93 C1 00 0C */	stw r30, 0xc(r1)
/* 804C3644  7F 23 CB 78 */	mr r3, r25
/* 804C3648  7F 45 D3 78 */	mr r5, r26
/* 804C364C  7F 66 DB 78 */	mr r6, r27
/* 804C3650  7F 8A E3 78 */	mr r10, r28
/* 804C3654  39 01 00 10 */	addi r8, r1, 0x10
/* 804C3658  39 20 00 FF */	li r9, 0xff
/* 804C365C  48 00 02 0D */	bl bit_cmn_single_drawS
/* 804C3660  7F 23 CB 78 */	mr r3, r25
/* 804C3664  4B FF B9 69 */	bl bit_draw_ta_clr
/* 804C3668  39 61 00 40 */	addi r11, r1, 0x40
/* 804C366C  4B BD 78 A5 */	bl func_8009AF10
/* 804C3670  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C3674  7C 08 03 A6 */	mtlr r0
/* 804C3678  38 21 00 40 */	addi r1, r1, 0x40
/* 804C367C  4E 80 00 20 */	blr 
