lbl_8046F094:
/* 8046F094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F098  7C 08 02 A6 */	mflr r0
/* 8046F09C  38 A0 00 02 */	li r5, 2
/* 8046F0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046F0A8  7C 7F 1B 78 */	mr r31, r3
/* 8046F0AC  A8 83 01 76 */	lha r4, 0x176(r3)
/* 8046F0B0  4B FF FE 95 */	bl aMI_CopyWallTexture
/* 8046F0B4  A8 9F 01 74 */	lha r4, 0x174(r31)
/* 8046F0B8  7F E3 FB 78 */	mr r3, r31
/* 8046F0BC  38 A0 00 02 */	li r5, 2
/* 8046F0C0  4B FF FD 81 */	bl aMI_CopyFloorTexture
/* 8046F0C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046F0C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046F0CC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8046F0D0  2C 03 00 2A */	cmpwi r3, 0x2a
/* 8046F0D4  41 82 00 18 */	beq lbl_8046F0EC
/* 8046F0D8  38 03 FF D5 */	addi r0, r3, -43
/* 8046F0DC  28 00 00 01 */	cmplwi r0, 1
/* 8046F0E0  40 81 00 0C */	ble lbl_8046F0EC
/* 8046F0E4  2C 03 00 2D */	cmpwi r3, 0x2d
/* 8046F0E8  40 82 00 1C */	bne lbl_8046F104
lbl_8046F0EC:
/* 8046F0EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046F0F0  38 00 00 52 */	li r0, 0x52
/* 8046F0F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046F0F8  3C 63 00 03 */	addis r3, r3, 3
/* 8046F0FC  98 03 85 91 */	stb r0, -0x7a6f(r3)
/* 8046F100  48 00 00 0C */	b lbl_8046F10C
lbl_8046F104:
/* 8046F104  A8 7F 01 74 */	lha r3, 0x174(r31)
/* 8046F108  4B FF FF 3D */	bl aNI_SetFloorSE
lbl_8046F10C:
/* 8046F10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046F114  7C 08 03 A6 */	mtlr r0
/* 8046F118  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F11C  4E 80 00 20 */	blr 
