lbl_805F8304:
/* 805F8304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F8308  7C 08 02 A6 */	mflr r0
/* 805F830C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F8310  39 61 00 20 */	addi r11, r1, 0x20
/* 805F8314  4B AA 2B BD */	bl func_8009AED0
/* 805F8318  7C 7C 1B 78 */	mr r28, r3
/* 805F831C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F8320  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F8324  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805F8328  3F E3 00 02 */	addis r31, r3, 2
/* 805F832C  7C 9D 23 78 */	mr r29, r4
/* 805F8330  83 C5 09 80 */	lwz r30, 0x980(r5)
/* 805F8334  38 80 00 00 */	li r4, 0
/* 805F8338  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F833C  4B DE 83 ED */	bl mPr_GetPossessionItemIdx
/* 805F8340  2C 03 00 00 */	cmpwi r3, 0
/* 805F8344  40 80 00 1C */	bge lbl_805F8360
/* 805F8348  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F834C  A0 03 10 8A */	lhz r0, 0x108a(r3)
/* 805F8350  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 805F8354  41 80 00 50 */	blt lbl_805F83A4
/* 805F8358  28 00 FE 27 */	cmplwi r0, 0xfe27
/* 805F835C  41 81 00 48 */	bgt lbl_805F83A4
lbl_805F8360:
/* 805F8360  38 00 00 06 */	li r0, 6
/* 805F8364  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE20@ha */
/* 805F8368  B0 1E 02 32 */	sth r0, 0x232(r30)
/* 805F836C  38 83 FE 20 */	addi r4, r3, 0xFE20 /* 0x0000FE20@l */
/* 805F8370  38 00 00 1B */	li r0, 0x1b
/* 805F8374  7F 83 E3 78 */	mr r3, r28
/* 805F8378  B0 9E 02 34 */	sth r4, 0x234(r30)
/* 805F837C  38 80 00 00 */	li r4, 0
/* 805F8380  38 A0 00 00 */	li r5, 0
/* 805F8384  98 1E 03 64 */	stb r0, 0x364(r30)
/* 805F8388  4B FF 74 2D */	bl mTG_return_tag_init
/* 805F838C  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805F8390  38 00 00 02 */	li r0, 2
/* 805F8394  38 60 01 1C */	li r3, 0x11c
/* 805F8398  B0 04 00 08 */	sth r0, 8(r4)
/* 805F839C  48 03 59 69 */	bl sAdo_SysTrgStart
/* 805F83A0  48 00 00 14 */	b lbl_805F83B4
lbl_805F83A4:
/* 805F83A4  7F 83 E3 78 */	mr r3, r28
/* 805F83A8  7F A4 EB 78 */	mr r4, r29
/* 805F83AC  38 A0 00 12 */	li r5, 0x12
/* 805F83B0  4B FF AA 71 */	bl mTG_open_warning_window
lbl_805F83B4:
/* 805F83B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F83B8  4B AA 2B 65 */	bl func_8009AF1C
/* 805F83BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F83C0  7C 08 03 A6 */	mtlr r0
/* 805F83C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805F83C8  4E 80 00 20 */	blr 
