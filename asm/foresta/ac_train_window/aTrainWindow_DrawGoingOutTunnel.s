lbl_804ACB94:
/* 804ACB94  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804ACB98  7C 08 02 A6 */	mflr r0
/* 804ACB9C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804ACBA0  39 61 00 40 */	addi r11, r1, 0x40
/* 804ACBA4  4B BE E3 31 */	bl func_8009AED4
/* 804ACBA8  7C 9D 23 78 */	mr r29, r4
/* 804ACBAC  7C 7F 1B 78 */	mr r31, r3
/* 804ACBB0  93 A1 00 08 */	stw r29, 8(r1)
/* 804ACBB4  38 7F 01 84 */	addi r3, r31, 0x184
/* 804ACBB8  38 9F 01 88 */	addi r4, r31, 0x188
/* 804ACBBC  38 A0 00 1E */	li r5, 0x1e
/* 804ACBC0  38 C0 00 00 */	li r6, 0
/* 804ACBC4  38 E0 03 E8 */	li r7, 0x3e8
/* 804ACBC8  39 00 00 00 */	li r8, 0
/* 804ACBCC  39 20 00 40 */	li r9, 0x40
/* 804ACBD0  39 40 00 20 */	li r10, 0x20
/* 804ACBD4  4B FF FD 19 */	bl aTrainWindow_TileScroll
/* 804ACBD8  38 1F 01 94 */	addi r0, r31, 0x194
/* 804ACBDC  7C 7E 1B 78 */	mr r30, r3
/* 804ACBE0  90 01 00 08 */	stw r0, 8(r1)
/* 804ACBE4  38 7F 01 98 */	addi r3, r31, 0x198
/* 804ACBE8  39 60 00 00 */	li r11, 0
/* 804ACBEC  38 00 00 10 */	li r0, 0x10
/* 804ACBF0  90 61 00 0C */	stw r3, 0xc(r1)
/* 804ACBF4  38 7F 01 8C */	addi r3, r31, 0x18c
/* 804ACBF8  38 9F 01 90 */	addi r4, r31, 0x190
/* 804ACBFC  38 A0 00 1E */	li r5, 0x1e
/* 804ACC00  91 61 00 10 */	stw r11, 0x10(r1)
/* 804ACC04  38 C0 00 00 */	li r6, 0
/* 804ACC08  38 E0 03 E8 */	li r7, 0x3e8
/* 804ACC0C  39 00 00 00 */	li r8, 0
/* 804ACC10  91 61 00 14 */	stw r11, 0x14(r1)
/* 804ACC14  39 20 00 40 */	li r9, 0x40
/* 804ACC18  39 40 00 08 */	li r10, 8
/* 804ACC1C  91 61 00 18 */	stw r11, 0x18(r1)
/* 804ACC20  91 61 00 1C */	stw r11, 0x1c(r1)
/* 804ACC24  90 01 00 20 */	stw r0, 0x20(r1)
/* 804ACC28  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ACC2C  93 A1 00 28 */	stw r29, 0x28(r1)
/* 804ACC30  4B FF FD 45 */	bl aTrainWindow_TileScroll2
/* 804ACC34  28 1E 00 00 */	cmplwi r30, 0
/* 804ACC38  41 82 00 0C */	beq lbl_804ACC44
/* 804ACC3C  28 03 00 00 */	cmplwi r3, 0
/* 804ACC40  40 82 00 0C */	bne lbl_804ACC4C
lbl_804ACC44:
/* 804ACC44  38 60 00 00 */	li r3, 0
/* 804ACC48  48 00 00 AC */	b lbl_804ACCF4
lbl_804ACC4C:
/* 804ACC4C  81 1D 00 00 */	lwz r8, 0(r29)
/* 804ACC50  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB06002C@ha */
/* 804ACC54  38 C4 00 2C */	addi r6, r4, 0x002C /* 0xDB06002C@l */
/* 804ACC58  80 E8 02 D0 */	lwz r7, 0x2d0(r8)
/* 804ACC5C  38 A4 00 30 */	addi r5, r4, 0x30
/* 804ACC60  38 07 00 08 */	addi r0, r7, 8
/* 804ACC64  90 08 02 D0 */	stw r0, 0x2d0(r8)
/* 804ACC68  90 C7 00 00 */	stw r6, 0(r7)
/* 804ACC6C  93 C7 00 04 */	stw r30, 4(r7)
/* 804ACC70  80 88 02 E0 */	lwz r4, 0x2e0(r8)
/* 804ACC74  38 04 00 08 */	addi r0, r4, 8
/* 804ACC78  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 804ACC7C  90 C4 00 00 */	stw r6, 0(r4)
/* 804ACC80  93 C4 00 04 */	stw r30, 4(r4)
/* 804ACC84  80 88 02 D0 */	lwz r4, 0x2d0(r8)
/* 804ACC88  38 04 00 08 */	addi r0, r4, 8
/* 804ACC8C  90 08 02 D0 */	stw r0, 0x2d0(r8)
/* 804ACC90  90 A4 00 00 */	stw r5, 0(r4)
/* 804ACC94  90 64 00 04 */	stw r3, 4(r4)
/* 804ACC98  80 88 02 E0 */	lwz r4, 0x2e0(r8)
/* 804ACC9C  38 04 00 08 */	addi r0, r4, 8
/* 804ACCA0  90 08 02 E0 */	stw r0, 0x2e0(r8)
/* 804ACCA4  90 A4 00 00 */	stw r5, 0(r4)
/* 804ACCA8  90 64 00 04 */	stw r3, 4(r4)
/* 804ACCAC  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 804ACCB0  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804ACCB4  40 82 00 3C */	bne lbl_804ACCF0
/* 804ACCB8  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 804ACCBC  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804ACCC0  40 82 00 30 */	bne lbl_804ACCF0
/* 804ACCC4  3C 60 80 4B */	lis r3, aTrainWindow_DrawGoneOutTunnel@ha /* 0x804ACA60@ha */
/* 804ACCC8  38 03 CA 60 */	addi r0, r3, aTrainWindow_DrawGoneOutTunnel@l /* 0x804ACA60@l */
/* 804ACCCC  90 1F 01 74 */	stw r0, 0x174(r31)
/* 804ACCD0  4B FF F7 59 */	bl func_804AC428
/* 804ACCD4  B0 7F 01 78 */	sth r3, 0x178(r31)
/* 804ACCD8  3C 60 80 69 */	lis r3, data_8068F500@ha /* 0x8068F500@ha */
/* 804ACCDC  38 03 F5 00 */	addi r0, r3, data_8068F500@l /* 0x8068F500@l */
/* 804ACCE0  A8 7F 01 78 */	lha r3, 0x178(r31)
/* 804ACCE4  54 63 28 34 */	slwi r3, r3, 5
/* 804ACCE8  7C 00 1A 14 */	add r0, r0, r3
/* 804ACCEC  90 1F 01 80 */	stw r0, 0x180(r31)
lbl_804ACCF0:
/* 804ACCF0  38 60 00 01 */	li r3, 1
lbl_804ACCF4:
/* 804ACCF4  39 61 00 40 */	addi r11, r1, 0x40
/* 804ACCF8  4B BE E2 29 */	bl func_8009AF20
/* 804ACCFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804ACD00  7C 08 03 A6 */	mtlr r0
/* 804ACD04  38 21 00 40 */	addi r1, r1, 0x40
/* 804ACD08  4E 80 00 20 */	blr 
