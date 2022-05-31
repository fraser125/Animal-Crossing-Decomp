lbl_8039B954:
/* 8039B954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B958  7C 08 02 A6 */	mflr r0
/* 8039B95C  3C 60 81 16 */	lis r3, index_today@ha /* 0x811677AC@ha */
/* 8039B960  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039B964  38 63 77 AC */	addi r3, r3, index_today@l /* 0x811677AC@l */
/* 8039B968  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039B96C  7C 9F 23 78 */	mr r31, r4
/* 8039B970  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039B974  7C BE 2B 78 */	mr r30, r5
/* 8039B978  7C 03 F8 AE */	lbzx r0, r3, r31
/* 8039B97C  28 00 00 FF */	cmplwi r0, 0xff
/* 8039B980  41 82 00 A8 */	beq lbl_8039BA28
/* 8039B984  3C 60 81 16 */	lis r3, event_today@ha /* 0x811676AC@ha */
/* 8039B988  54 04 25 36 */	rlwinm r4, r0, 4, 0x14, 0x1b
/* 8039B98C  38 03 76 AC */	addi r0, r3, event_today@l /* 0x811676AC@l */
/* 8039B990  7C A0 22 14 */	add r5, r0, r4
/* 8039B994  80 65 00 00 */	lwz r3, 0(r5)
/* 8039B998  28 03 00 40 */	cmplwi r3, 0x40
/* 8039B99C  41 81 00 48 */	bgt lbl_8039B9E4
/* 8039B9A0  3C 80 80 65 */	lis r4, lit_911@ha /* 0x80651EE8@ha */
/* 8039B9A4  54 60 10 3A */	slwi r0, r3, 2
/* 8039B9A8  38 84 1E E8 */	addi r4, r4, lit_911@l /* 0x80651EE8@l */
/* 8039B9AC  7C 04 00 2E */	lwzx r0, r4, r0
/* 8039B9B0  7C 09 03 A6 */	mtctr r0
/* 8039B9B4  4E 80 04 20 */	bctr 
lbl_8039B9B8:
/* 8039B9B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8039B9BC  4B FF FC 95 */	bl mEv_get_end_time
/* 8039B9C0  98 61 00 0B */	stb r3, 0xb(r1)
/* 8039B9C4  48 00 00 28 */	b lbl_8039B9EC
lbl_8039B9C8:
/* 8039B9C8  38 80 00 00 */	li r4, 0
/* 8039B9CC  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 8039B9D0  90 81 00 08 */	stw r4, 8(r1)
/* 8039B9D4  B0 01 00 08 */	sth r0, 8(r1)
/* 8039B9D8  4B FF FC 79 */	bl mEv_get_end_time
/* 8039B9DC  98 61 00 0B */	stb r3, 0xb(r1)
/* 8039B9E0  48 00 00 0C */	b lbl_8039B9EC
lbl_8039B9E4:
/* 8039B9E4  38 60 00 00 */	li r3, 0
/* 8039B9E8  48 00 00 44 */	b lbl_8039BA2C
lbl_8039B9EC:
/* 8039B9EC  80 01 00 08 */	lwz r0, 8(r1)
/* 8039B9F0  7C 00 F0 40 */	cmplw r0, r30
/* 8039B9F4  41 82 00 0C */	beq lbl_8039BA00
/* 8039B9F8  38 60 00 00 */	li r3, 0
/* 8039B9FC  48 00 00 30 */	b lbl_8039BA2C
lbl_8039BA00:
/* 8039BA00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039BA04  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8039BA08  3C 64 00 02 */	addis r3, r4, 2
/* 8039BA0C  88 03 61 21 */	lbz r0, 0x6121(r3)
/* 8039BA10  28 00 00 37 */	cmplwi r0, 0x37
/* 8039BA14  40 80 00 0C */	bge lbl_8039BA20
/* 8039BA18  38 60 00 00 */	li r3, 0
/* 8039BA1C  48 00 00 10 */	b lbl_8039BA2C
lbl_8039BA20:
/* 8039BA20  3C 64 00 03 */	addis r3, r4, 3
/* 8039BA24  B3 E3 86 D0 */	sth r31, -0x7930(r3)
lbl_8039BA28:
/* 8039BA28  38 60 00 01 */	li r3, 1
lbl_8039BA2C:
/* 8039BA2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039BA30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039BA34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039BA38  7C 08 03 A6 */	mtlr r0
/* 8039BA3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8039BA40  4E 80 00 20 */	blr 
