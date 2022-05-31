lbl_8049BD78:
/* 8049BD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BD7C  7C 08 02 A6 */	mflr r0
/* 8049BD80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049BD84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049BD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BD8C  3C 63 00 02 */	addis r3, r3, 2
/* 8049BD90  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 8049BD94  38 60 00 00 */	li r3, 0
/* 8049BD98  2C 00 00 01 */	cmpwi r0, 1
/* 8049BD9C  41 82 00 20 */	beq lbl_8049BDBC
/* 8049BDA0  2C 00 00 02 */	cmpwi r0, 2
/* 8049BDA4  41 82 00 18 */	beq lbl_8049BDBC
/* 8049BDA8  7C A3 2B 78 */	mr r3, r5
/* 8049BDAC  7C C4 33 78 */	mr r4, r6
/* 8049BDB0  7C E5 3B 78 */	mr r5, r7
/* 8049BDB4  7D 06 43 78 */	mr r6, r8
/* 8049BDB8  4B FF F7 81 */	bl aSOI_ins_field_fg_check_get
lbl_8049BDBC:
/* 8049BDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BDC0  7C 08 03 A6 */	mtlr r0
/* 8049BDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BDC8  4E 80 00 20 */	blr 
