lbl_8053B9CC:
/* 8053B9CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8053B9D0  7C 08 02 A6 */	mflr r0
/* 8053B9D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8053B9D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8053B9DC  4B B5 F4 ED */	bl func_8009AEC8
/* 8053B9E0  7C 9E 23 78 */	mr r30, r4
/* 8053B9E4  7C 7A 1B 78 */	mr r26, r3
/* 8053B9E8  7C BF 2B 78 */	mr r31, r5
/* 8053B9EC  7C C4 33 78 */	mr r4, r6
/* 8053B9F0  4B FF FF 29 */	bl aNPC_check_anime_timing
/* 8053B9F4  2C 03 00 01 */	cmpwi r3, 1
/* 8053B9F8  40 82 01 04 */	bne lbl_8053BAFC
/* 8053B9FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053BA00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053BA04  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8053BA08  2C 00 00 31 */	cmpwi r0, 0x31
/* 8053BA0C  41 82 00 E8 */	beq lbl_8053BAF4
/* 8053BA10  40 80 00 14 */	bge lbl_8053BA24
/* 8053BA14  2C 00 00 11 */	cmpwi r0, 0x11
/* 8053BA18  40 80 00 0C */	bge lbl_8053BA24
/* 8053BA1C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8053BA20  40 80 00 D4 */	bge lbl_8053BAF4
lbl_8053BA24:
/* 8053BA24  88 1A 00 B5 */	lbz r0, 0xb5(r26)
/* 8053BA28  28 00 00 00 */	cmplwi r0, 0
/* 8053BA2C  41 82 00 C8 */	beq lbl_8053BAF4
/* 8053BA30  80 7A 08 40 */	lwz r3, 0x840(r26)
/* 8053BA34  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8053BA38  40 82 00 BC */	bne lbl_8053BAF4
/* 8053BA3C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8053BA40  40 82 00 B4 */	bne lbl_8053BAF4
/* 8053BA44  AB 9A 00 DE */	lha r28, 0xde(r26)
/* 8053BA48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053BA4C  A3 7A 00 06 */	lhz r27, 6(r26)
/* 8053BA50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053BA54  80 9A 00 98 */	lwz r4, 0x98(r26)
/* 8053BA58  3F A3 00 02 */	addis r29, r3, 2
/* 8053BA5C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8053BA60  7F 86 E3 78 */	mr r6, r28
/* 8053BA64  80 1F 00 04 */	lwz r0, 4(r31)
/* 8053BA68  54 84 AE BE */	rlwinm r4, r4, 0x15, 0x1a, 0x1f
/* 8053BA6C  7C 9A 07 34 */	extsh r26, r4
/* 8053BA70  81 7D 60 9C */	lwz r11, 0x609c(r29)
/* 8053BA74  90 61 00 14 */	stw r3, 0x14(r1)
/* 8053BA78  7F C7 F3 78 */	mr r7, r30
/* 8053BA7C  7F 68 DB 78 */	mr r8, r27
/* 8053BA80  7F 49 D3 78 */	mr r9, r26
/* 8053BA84  90 01 00 18 */	stw r0, 0x18(r1)
/* 8053BA88  38 81 00 14 */	addi r4, r1, 0x14
/* 8053BA8C  38 60 00 44 */	li r3, 0x44
/* 8053BA90  38 A0 00 01 */	li r5, 1
/* 8053BA94  80 1F 00 08 */	lwz r0, 8(r31)
/* 8053BA98  39 40 00 00 */	li r10, 0
/* 8053BA9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8053BAA0  81 8B 00 00 */	lwz r12, 0(r11)
/* 8053BAA4  7D 89 03 A6 */	mtctr r12
/* 8053BAA8  4E 80 04 21 */	bctrl 
/* 8053BAAC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8053BAB0  7F 86 E3 78 */	mr r6, r28
/* 8053BAB4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8053BAB8  7F C7 F3 78 */	mr r7, r30
/* 8053BABC  81 7D 60 9C */	lwz r11, 0x609c(r29)
/* 8053BAC0  7F 68 DB 78 */	mr r8, r27
/* 8053BAC4  90 61 00 08 */	stw r3, 8(r1)
/* 8053BAC8  7F 49 D3 78 */	mr r9, r26
/* 8053BACC  38 81 00 08 */	addi r4, r1, 8
/* 8053BAD0  38 60 00 2C */	li r3, 0x2c
/* 8053BAD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8053BAD8  38 A0 00 01 */	li r5, 1
/* 8053BADC  39 40 00 00 */	li r10, 0
/* 8053BAE0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8053BAE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8053BAE8  81 8B 00 00 */	lwz r12, 0(r11)
/* 8053BAEC  7D 89 03 A6 */	mtctr r12
/* 8053BAF0  4E 80 04 21 */	bctrl 
lbl_8053BAF4:
/* 8053BAF4  7F E3 FB 78 */	mr r3, r31
/* 8053BAF8  48 00 08 F1 */	bl aNPC_WalkSeRoom
lbl_8053BAFC:
/* 8053BAFC  39 61 00 40 */	addi r11, r1, 0x40
/* 8053BB00  4B B5 F4 15 */	bl func_8009AF14
/* 8053BB04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053BB08  7C 08 03 A6 */	mtlr r0
/* 8053BB0C  38 21 00 40 */	addi r1, r1, 0x40
/* 8053BB10  4E 80 00 20 */	blr 
