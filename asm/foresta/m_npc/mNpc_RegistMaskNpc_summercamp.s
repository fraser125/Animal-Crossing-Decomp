lbl_803D2BB8:
/* 803D2BB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D2BBC  7C 08 02 A6 */	mflr r0
/* 803D2BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D2BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2BC8  4B CC 83 09 */	bl func_8009AED0
/* 803D2BCC  7C 7C 1B 78 */	mr r28, r3
/* 803D2BD0  7C 9D 23 78 */	mr r29, r4
/* 803D2BD4  7C BE 2B 78 */	mr r30, r5
/* 803D2BD8  4B FF C0 49 */	bl mNpc_GetFreeMaskNpcIdx
/* 803D2BDC  2C 03 FF FF */	cmpwi r3, -1
/* 803D2BE0  38 C0 00 00 */	li r6, 0
/* 803D2BE4  41 82 00 EC */	beq lbl_803D2CD0
/* 803D2BE8  1C A3 09 90 */	mulli r5, r3, 0x990
/* 803D2BEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D2BF0  57 C3 04 3F */	clrlwi. r3, r30, 0x10
/* 803D2BF4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803D2BF8  7C 80 2A 14 */	add r4, r0, r5
/* 803D2BFC  3F E4 00 02 */	addis r31, r4, 2
/* 803D2C00  3B FF 68 78 */	addi r31, r31, 0x6878
/* 803D2C04  41 82 00 30 */	beq lbl_803D2C34
/* 803D2C08  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 803D2C0C  38 00 00 00 */	li r0, 0
/* 803D2C10  41 82 00 14 */	beq lbl_803D2C24
/* 803D2C14  28 03 24 00 */	cmplwi r3, 0x2400
/* 803D2C18  41 80 00 10 */	blt lbl_803D2C28
/* 803D2C1C  28 03 24 FF */	cmplwi r3, 0x24ff
/* 803D2C20  40 80 00 08 */	bge lbl_803D2C28
lbl_803D2C24:
/* 803D2C24  38 00 00 01 */	li r0, 1
lbl_803D2C28:
/* 803D2C28  2C 00 00 00 */	cmpwi r0, 0
/* 803D2C2C  40 82 00 08 */	bne lbl_803D2C34
/* 803D2C30  3B C0 24 00 */	li r30, 0x2400
lbl_803D2C34:
/* 803D2C34  57 A0 A7 3E */	rlwinm r0, r29, 0x14, 0x1c, 0x1f
/* 803D2C38  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D2C3C  40 82 00 94 */	bne lbl_803D2CD0
/* 803D2C40  B3 9F 00 00 */	sth r28, 0(r31)
/* 803D2C44  38 80 00 00 */	li r4, 0
/* 803D2C48  38 00 00 01 */	li r0, 1
/* 803D2C4C  38 7F 00 08 */	addi r3, r31, 8
/* 803D2C50  B3 BF 00 02 */	sth r29, 2(r31)
/* 803D2C54  98 9F 00 06 */	stb r4, 6(r31)
/* 803D2C58  98 1F 00 07 */	stb r0, 7(r31)
/* 803D2C5C  4B FF 97 E1 */	bl mNpc_ClearAnimalInfo
/* 803D2C60  3C 60 80 97 */	lis r3, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803D2C64  7F A4 EB 78 */	mr r4, r29
/* 803D2C68  38 A3 CC 90 */	addi r5, r3, data_8096CC90@l /* 0x8096CC90@l */
/* 803D2C6C  38 7F 00 08 */	addi r3, r31, 8
/* 803D2C70  4B FF C3 19 */	bl mNpc_SetDefAnimal
/* 803D2C74  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 803D2C78  40 82 00 10 */	bne lbl_803D2C88
/* 803D2C7C  A0 1F 08 EC */	lhz r0, 0x8ec(r31)
/* 803D2C80  B0 1F 00 04 */	sth r0, 4(r31)
/* 803D2C84  48 00 00 08 */	b lbl_803D2C8C
lbl_803D2C88:
/* 803D2C88  B3 DF 00 04 */	sth r30, 4(r31)
lbl_803D2C8C:
/* 803D2C8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2C90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2C94  3C 63 00 02 */	addis r3, r3, 2
/* 803D2C98  88 03 61 46 */	lbz r0, 0x6146(r3)
/* 803D2C9C  28 00 00 01 */	cmplwi r0, 1
/* 803D2CA0  40 82 00 2C */	bne lbl_803D2CCC
/* 803D2CA4  38 7F 00 18 */	addi r3, r31, 0x18
/* 803D2CA8  38 80 00 01 */	li r4, 1
/* 803D2CAC  4B FF 8A 09 */	bl mNpc_ClearAnimalMemory
/* 803D2CB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2CB4  38 9F 00 08 */	addi r4, r31, 8
/* 803D2CB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2CBC  38 BF 00 18 */	addi r5, r31, 0x18
/* 803D2CC0  3C 63 00 02 */	addis r3, r3, 2
/* 803D2CC4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803D2CC8  4B FF 90 5D */	bl mNpc_SetAnimalMemory
lbl_803D2CCC:
/* 803D2CCC  38 C0 00 01 */	li r6, 1
lbl_803D2CD0:
/* 803D2CD0  7C C3 33 78 */	mr r3, r6
/* 803D2CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 803D2CD8  4B CC 82 45 */	bl func_8009AF1C
/* 803D2CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D2CE0  7C 08 03 A6 */	mtlr r0
/* 803D2CE4  38 21 00 20 */	addi r1, r1, 0x20
/* 803D2CE8  4E 80 00 20 */	blr 
