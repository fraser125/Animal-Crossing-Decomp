lbl_803CA088:
/* 803CA088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CA08C  7C 08 02 A6 */	mflr r0
/* 803CA090  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CA094  39 61 00 20 */	addi r11, r1, 0x20
/* 803CA098  4B CD 0E 39 */	bl func_8009AED0
/* 803CA09C  3C A0 80 64 */	lis r5, data_806432C4@ha /* 0x806432C4@ha */
/* 803CA0A0  7C 7C 1B 78 */	mr r28, r3
/* 803CA0A4  38 65 32 C4 */	addi r3, r5, data_806432C4@l /* 0x806432C4@l */
/* 803CA0A8  7C 9D 23 78 */	mr r29, r4
/* 803CA0AC  83 C3 00 00 */	lwz r30, 0(r3)
/* 803CA0B0  83 E3 00 04 */	lwz r31, 4(r3)
/* 803CA0B4  48 00 00 24 */	b lbl_803CA0D8
lbl_803CA0B8:
/* 803CA0B8  93 DC 00 C0 */	stw r30, 0xc0(r28)
/* 803CA0BC  7F 83 E3 78 */	mr r3, r28
/* 803CA0C0  38 80 00 C0 */	li r4, 0xc0
/* 803CA0C4  38 A0 00 20 */	li r5, 0x20
/* 803CA0C8  93 FC 00 C4 */	stw r31, 0xc4(r28)
/* 803CA0CC  4B FF 09 7D */	bl mem_clear
/* 803CA0D0  3B 9C 00 C8 */	addi r28, r28, 0xc8
/* 803CA0D4  3B BD FF FF */	addi r29, r29, -1
lbl_803CA0D8:
/* 803CA0D8  2C 1D 00 00 */	cmpwi r29, 0
/* 803CA0DC  40 82 FF DC */	bne lbl_803CA0B8
/* 803CA0E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CA0E4  4B CD 0E 39 */	bl func_8009AF1C
/* 803CA0E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CA0EC  7C 08 03 A6 */	mtlr r0
/* 803CA0F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803CA0F4  4E 80 00 20 */	blr 
