lbl_806011D4:
/* 806011D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806011D8  7C 08 02 A6 */	mflr r0
/* 806011DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806011E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806011E4  7C 7F 1B 78 */	mr r31, r3
/* 806011E8  93 C1 00 08 */	stw r30, 8(r1)
/* 806011EC  7C 9E 23 78 */	mr r30, r4
/* 806011F0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 806011F4  80 03 03 54 */	lwz r0, 0x354(r3)
/* 806011F8  2C 00 00 04 */	cmpwi r0, 4
/* 806011FC  40 82 00 4C */	bne lbl_80601248
/* 80601200  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 80601204  7F C3 F3 78 */	mr r3, r30
/* 80601208  38 80 00 04 */	li r4, 4
/* 8060120C  7D 89 03 A6 */	mtctr r12
/* 80601210  4E 80 04 21 */	bctrl 
/* 80601214  38 60 00 02 */	li r3, 2
/* 80601218  48 02 CA ED */	bl sAdo_SysTrgStart
/* 8060121C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80601220  38 A0 00 0E */	li r5, 0xe
/* 80601224  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80601228  83 E4 09 F4 */	lwz r31, 0x9f4(r4)
/* 8060122C  38 9F 00 06 */	addi r4, r31, 6
/* 80601230  4B DB 97 F5 */	bl func_803BAA24
/* 80601234  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80601238  38 9F 00 14 */	addi r4, r31, 0x14
/* 8060123C  38 A0 00 0E */	li r5, 0xe
/* 80601240  38 63 00 0E */	addi r3, r3, 0xe
/* 80601244  4B DB 97 E1 */	bl func_803BAA24
lbl_80601248:
/* 80601248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060124C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601250  83 C1 00 08 */	lwz r30, 8(r1)
/* 80601254  7C 08 03 A6 */	mtlr r0
/* 80601258  38 21 00 10 */	addi r1, r1, 0x10
/* 8060125C  4E 80 00 20 */	blr 
