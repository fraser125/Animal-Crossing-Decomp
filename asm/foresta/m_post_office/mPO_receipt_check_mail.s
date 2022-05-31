lbl_803DEF34:
/* 803DEF34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DEF38  7C 08 02 A6 */	mflr r0
/* 803DEF3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DEF40  39 61 00 20 */	addi r11, r1, 0x20
/* 803DEF44  4B CB BF 91 */	bl func_8009AED4
/* 803DEF48  7C 7D 1B 78 */	mr r29, r3
/* 803DEF4C  3B E0 00 00 */	li r31, 0
/* 803DEF50  88 03 00 14 */	lbz r0, 0x14(r3)
/* 803DEF54  2C 00 00 01 */	cmpwi r0, 1
/* 803DEF58  41 82 00 80 */	beq lbl_803DEFD8
/* 803DEF5C  40 80 00 10 */	bge lbl_803DEF6C
/* 803DEF60  2C 00 00 00 */	cmpwi r0, 0
/* 803DEF64  40 80 00 14 */	bge lbl_803DEF78
/* 803DEF68  48 00 00 DC */	b lbl_803DF044
lbl_803DEF6C:
/* 803DEF6C  2C 00 00 03 */	cmpwi r0, 3
/* 803DEF70  40 80 00 D4 */	bge lbl_803DF044
/* 803DEF74  48 00 00 A8 */	b lbl_803DF01C
lbl_803DEF78:
/* 803DEF78  4B FD DB 6D */	bl mMl_hunt_for_send_address
/* 803DEF7C  7C 7E 1B 78 */	mr r30, r3
/* 803DEF80  2C 1E FF FF */	cmpwi r30, -1
/* 803DEF84  41 82 00 C0 */	beq lbl_803DF044
/* 803DEF88  4B FF FE 4D */	bl mPO_count_mail
/* 803DEF8C  2C 03 00 0A */	cmpwi r3, 0xa
/* 803DEF90  40 80 00 B4 */	bge lbl_803DF044
/* 803DEF94  7F A3 EB 78 */	mr r3, r29
/* 803DEF98  4B FF FD B9 */	bl func_803DED50
/* 803DEF9C  7C 7F 1B 78 */	mr r31, r3
/* 803DEFA0  2C 1F 00 01 */	cmpwi r31, 1
/* 803DEFA4  40 82 00 A0 */	bne lbl_803DF044
/* 803DEFA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DEFAC  38 00 00 01 */	li r0, 1
/* 803DEFB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DEFB4  3C A3 00 02 */	addis r5, r3, 2
/* 803DEFB8  7C 00 F0 30 */	slw r0, r0, r30
/* 803DEFBC  A8 85 06 98 */	lha r4, 0x698(r5)
/* 803DEFC0  A8 65 06 94 */	lha r3, 0x694(r5)
/* 803DEFC4  7C 84 03 78 */	or r4, r4, r0
/* 803DEFC8  38 03 00 01 */	addi r0, r3, 1
/* 803DEFCC  B0 85 06 98 */	sth r4, 0x698(r5)
/* 803DEFD0  B0 05 06 94 */	sth r0, 0x694(r5)
/* 803DEFD4  48 00 00 70 */	b lbl_803DF044
lbl_803DEFD8:
/* 803DEFD8  4B FF 6E 75 */	bl mNpc_ReceiveHPMail
/* 803DEFDC  2C 03 00 00 */	cmpwi r3, 0
/* 803DEFE0  40 82 00 0C */	bne lbl_803DEFEC
/* 803DEFE4  7F A3 EB 78 */	mr r3, r29
/* 803DEFE8  4B FE E2 8D */	bl mNpc_SendMailtoNpc
lbl_803DEFEC:
/* 803DEFEC  7F A3 EB 78 */	mr r3, r29
/* 803DEFF0  4B FF FD 61 */	bl func_803DED50
/* 803DEFF4  7C 7F 1B 78 */	mr r31, r3
/* 803DEFF8  2C 1F 00 01 */	cmpwi r31, 1
/* 803DEFFC  40 82 00 48 */	bne lbl_803DF044
/* 803DF000  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF004  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF008  3C 83 00 02 */	addis r4, r3, 2
/* 803DF00C  A8 64 06 96 */	lha r3, 0x696(r4)
/* 803DF010  38 03 00 01 */	addi r0, r3, 1
/* 803DF014  B0 04 06 96 */	sth r0, 0x696(r4)
/* 803DF018  48 00 00 2C */	b lbl_803DF044
lbl_803DF01C:
/* 803DF01C  4B FE 79 B1 */	bl mMsm_SendMuseumMail
/* 803DF020  7F A3 EB 78 */	mr r3, r29
/* 803DF024  4B FD D6 DD */	bl mMl_clear_mail
/* 803DF028  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF02C  3B E0 00 01 */	li r31, 1
/* 803DF030  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DF034  3C 83 00 02 */	addis r4, r3, 2
/* 803DF038  A8 64 06 96 */	lha r3, 0x696(r4)
/* 803DF03C  38 03 00 01 */	addi r0, r3, 1
/* 803DF040  B0 04 06 96 */	sth r0, 0x696(r4)
lbl_803DF044:
/* 803DF044  7F E3 FB 78 */	mr r3, r31
/* 803DF048  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF04C  4B CB BE D5 */	bl func_8009AF20
/* 803DF050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF054  7C 08 03 A6 */	mtlr r0
/* 803DF058  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF05C  4E 80 00 20 */	blr 
