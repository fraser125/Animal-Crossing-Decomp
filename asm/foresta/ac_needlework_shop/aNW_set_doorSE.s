lbl_805B669C:
/* 805B669C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B66A0  7C 08 02 A6 */	mflr r0
/* 805B66A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B66A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805B66AC  4B AE 48 25 */	bl func_8009AED0
/* 805B66B0  7C 7C 1B 78 */	mr r28, r3
/* 805B66B4  3C 60 80 6C */	lis r3, data_806C6038@ha /* 0x806C6038@ha */
/* 805B66B8  80 1C 02 B0 */	lwz r0, 0x2b0(r28)
/* 805B66BC  3B E3 60 38 */	addi r31, r3, data_806C6038@l /* 0x806C6038@l */
/* 805B66C0  2C 00 00 02 */	cmpwi r0, 2
/* 805B66C4  41 82 00 24 */	beq lbl_805B66E8
/* 805B66C8  40 80 00 10 */	bge lbl_805B66D8
/* 805B66CC  2C 00 00 01 */	cmpwi r0, 1
/* 805B66D0  40 80 00 10 */	bge lbl_805B66E0
/* 805B66D4  48 00 00 14 */	b lbl_805B66E8
lbl_805B66D8:
/* 805B66D8  2C 00 00 04 */	cmpwi r0, 4
/* 805B66DC  40 80 00 0C */	bge lbl_805B66E8
lbl_805B66E0:
/* 805B66E0  3B DF 00 5C */	addi r30, r31, 0x5c
/* 805B66E4  48 00 00 08 */	b lbl_805B66EC
lbl_805B66E8:
/* 805B66E8  3B DF 00 6C */	addi r30, r31, 0x6c
lbl_805B66EC:
/* 805B66EC  3B A0 00 00 */	li r29, 0
lbl_805B66F0:
/* 805B66F0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805B66F4  38 7C 01 78 */	addi r3, r28, 0x178
/* 805B66F8  4B DB 9D 91 */	bl cKF_FrameControl_passCheck_now
/* 805B66FC  2C 03 00 00 */	cmpwi r3, 0
/* 805B6700  41 82 00 1C */	beq lbl_805B671C
/* 805B6704  57 A0 08 3C */	slwi r0, r29, 1
/* 805B6708  38 7F 00 7C */	addi r3, r31, 0x7c
/* 805B670C  7C 83 02 2E */	lhzx r4, r3, r0
/* 805B6710  7F 83 E3 78 */	mr r3, r28
/* 805B6714  4B FF FF 5D */	bl func_805B6670
/* 805B6718  48 00 00 14 */	b lbl_805B672C
lbl_805B671C:
/* 805B671C  3B BD 00 01 */	addi r29, r29, 1
/* 805B6720  3B DE 00 04 */	addi r30, r30, 4
/* 805B6724  2C 1D 00 04 */	cmpwi r29, 4
/* 805B6728  41 80 FF C8 */	blt lbl_805B66F0
lbl_805B672C:
/* 805B672C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B6730  4B AE 47 ED */	bl func_8009AF1C
/* 805B6734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B6738  7C 08 03 A6 */	mtlr r0
/* 805B673C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B6740  4E 80 00 20 */	blr 
