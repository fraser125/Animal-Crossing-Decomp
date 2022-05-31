lbl_8049AEC0:
/* 8049AEC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049AEC4  7C 08 02 A6 */	mflr r0
/* 8049AEC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049AECC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049AED0  4B BF FF FD */	bl func_8009AECC
/* 8049AED4  3C A0 80 69 */	lis r5, additional_data@ha /* 0x8068E1C8@ha */
/* 8049AED8  7C 7B 1B 78 */	mr r27, r3
/* 8049AEDC  7C 9C 23 78 */	mr r28, r4
/* 8049AEE0  3B A0 00 00 */	li r29, 0
/* 8049AEE4  3B C5 E1 C8 */	addi r30, r5, additional_data@l /* 0x8068E1C8@l */
/* 8049AEE8  3B E0 00 00 */	li r31, 0
lbl_8049AEEC:
/* 8049AEEC  7F 64 DB 78 */	mr r4, r27
/* 8049AEF0  7C 7E FA 14 */	add r3, r30, r31
/* 8049AEF4  38 A0 00 0C */	li r5, 0xc
/* 8049AEF8  4B BC 21 25 */	bl func_8005D01C
/* 8049AEFC  3B BD 00 01 */	addi r29, r29, 1
/* 8049AF00  3B FF 00 0C */	addi r31, r31, 0xc
/* 8049AF04  2C 1D 00 03 */	cmpwi r29, 3
/* 8049AF08  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8049AF0C  41 80 FF E0 */	blt lbl_8049AEEC
/* 8049AF10  88 7C 00 00 */	lbz r3, 0(r28)
/* 8049AF14  38 03 00 03 */	addi r0, r3, 3
/* 8049AF18  98 1C 00 00 */	stb r0, 0(r28)
/* 8049AF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049AF20  4B BF FF F9 */	bl func_8009AF18
/* 8049AF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049AF28  7C 08 03 A6 */	mtlr r0
/* 8049AF2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8049AF30  4E 80 00 20 */	blr 
