lbl_8052E4D4:
/* 8052E4D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052E4D8  7C 08 02 A6 */	mflr r0
/* 8052E4DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052E4E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8052E4E4  4B B6 C9 F1 */	bl func_8009AED4
/* 8052E4E8  7C 60 1B 78 */	mr r0, r3
/* 8052E4EC  38 60 00 04 */	li r3, 4
/* 8052E4F0  7C 1F 03 78 */	mr r31, r0
/* 8052E4F4  38 80 00 03 */	li r4, 3
/* 8052E4F8  4B E6 9F 85 */	bl mDemo_Get_OrderValue
/* 8052E4FC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8052E500  3B C0 00 01 */	li r30, 1
/* 8052E504  2C 00 00 04 */	cmpwi r0, 4
/* 8052E508  3B A0 00 01 */	li r29, 1
/* 8052E50C  40 80 00 0C */	bge lbl_8052E518
/* 8052E510  2C 00 00 02 */	cmpwi r0, 2
/* 8052E514  40 80 00 18 */	bge lbl_8052E52C
lbl_8052E518:
/* 8052E518  38 60 00 04 */	li r3, 4
/* 8052E51C  38 80 00 01 */	li r4, 1
/* 8052E520  4B E6 9F 5D */	bl mDemo_Get_OrderValue
/* 8052E524  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8052E528  3B C0 00 00 */	li r30, 0
lbl_8052E52C:
/* 8052E52C  2C 00 00 05 */	cmpwi r0, 5
/* 8052E530  41 82 00 2C */	beq lbl_8052E55C
/* 8052E534  40 80 00 1C */	bge lbl_8052E550
/* 8052E538  2C 00 00 03 */	cmpwi r0, 3
/* 8052E53C  41 82 00 20 */	beq lbl_8052E55C
/* 8052E540  40 80 00 68 */	bge lbl_8052E5A8
/* 8052E544  2C 00 00 02 */	cmpwi r0, 2
/* 8052E548  40 80 00 60 */	bge lbl_8052E5A8
/* 8052E54C  48 00 01 10 */	b lbl_8052E65C
lbl_8052E550:
/* 8052E550  2C 00 00 0F */	cmpwi r0, 0xf
/* 8052E554  41 82 00 C0 */	beq lbl_8052E614
/* 8052E558  48 00 01 04 */	b lbl_8052E65C
lbl_8052E55C:
/* 8052E55C  38 61 00 14 */	addi r3, r1, 0x14
/* 8052E560  38 80 00 0C */	li r4, 0xc
/* 8052E564  4B B2 EB 05 */	bl bzero
/* 8052E568  38 60 00 05 */	li r3, 5
/* 8052E56C  38 80 00 00 */	li r4, 0
/* 8052E570  4B E6 9F 0D */	bl mDemo_Get_OrderValue
/* 8052E574  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8052E578  7F E3 FB 78 */	mr r3, r31
/* 8052E57C  38 E1 00 14 */	addi r7, r1, 0x14
/* 8052E580  38 80 00 04 */	li r4, 4
/* 8052E584  38 A0 00 12 */	li r5, 0x12
/* 8052E588  38 C0 00 00 */	li r6, 0
/* 8052E58C  48 00 30 71 */	bl aNPC_set_request_act
/* 8052E590  2C 03 00 01 */	cmpwi r3, 1
/* 8052E594  40 82 00 C8 */	bne lbl_8052E65C
/* 8052E598  7F C3 F3 78 */	mr r3, r30
/* 8052E59C  4B FF FE C1 */	bl aNPC_clear_timing_demoCode
/* 8052E5A0  3B A0 00 00 */	li r29, 0
/* 8052E5A4  48 00 00 B8 */	b lbl_8052E65C
lbl_8052E5A8:
/* 8052E5A8  38 61 00 08 */	addi r3, r1, 8
/* 8052E5AC  38 80 00 0C */	li r4, 0xc
/* 8052E5B0  4B B2 EA B9 */	bl bzero
/* 8052E5B4  38 60 00 05 */	li r3, 5
/* 8052E5B8  38 80 00 00 */	li r4, 0
/* 8052E5BC  4B E6 9E C1 */	bl mDemo_Get_OrderValue
/* 8052E5C0  B0 61 00 08 */	sth r3, 8(r1)
/* 8052E5C4  38 60 00 05 */	li r3, 5
/* 8052E5C8  38 80 00 01 */	li r4, 1
/* 8052E5CC  4B E6 9E B1 */	bl mDemo_Get_OrderValue
/* 8052E5D0  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8052E5D4  38 60 00 05 */	li r3, 5
/* 8052E5D8  38 80 00 02 */	li r4, 2
/* 8052E5DC  4B E6 9E A1 */	bl mDemo_Get_OrderValue
/* 8052E5E0  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8052E5E4  7F E3 FB 78 */	mr r3, r31
/* 8052E5E8  38 E1 00 08 */	addi r7, r1, 8
/* 8052E5EC  38 80 00 04 */	li r4, 4
/* 8052E5F0  38 A0 00 11 */	li r5, 0x11
/* 8052E5F4  38 C0 00 00 */	li r6, 0
/* 8052E5F8  48 00 30 05 */	bl aNPC_set_request_act
/* 8052E5FC  2C 03 00 01 */	cmpwi r3, 1
/* 8052E600  40 82 00 5C */	bne lbl_8052E65C
/* 8052E604  7F C3 F3 78 */	mr r3, r30
/* 8052E608  4B FF FE 55 */	bl aNPC_clear_timing_demoCode
/* 8052E60C  3B A0 00 00 */	li r29, 0
/* 8052E610  48 00 00 4C */	b lbl_8052E65C
lbl_8052E614:
/* 8052E614  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 8052E618  7F E3 FB 78 */	mr r3, r31
/* 8052E61C  38 E4 14 00 */	addi r7, r4, data_806A1400@l /* 0x806A1400@l */
/* 8052E620  38 A0 00 13 */	li r5, 0x13
/* 8052E624  38 80 00 04 */	li r4, 4
/* 8052E628  38 C0 00 00 */	li r6, 0
/* 8052E62C  48 00 2F D1 */	bl aNPC_set_request_act
/* 8052E630  2C 03 00 01 */	cmpwi r3, 1
/* 8052E634  40 82 00 28 */	bne lbl_8052E65C
/* 8052E638  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052E63C  7F C3 F3 78 */	mr r3, r30
/* 8052E640  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052E644  3C A4 00 02 */	addis r5, r4, 2
/* 8052E648  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 8052E64C  A0 04 10 8A */	lhz r0, 0x108a(r4)
/* 8052E650  B0 05 66 68 */	sth r0, 0x6668(r5)
/* 8052E654  4B FF FE 09 */	bl aNPC_clear_timing_demoCode
/* 8052E658  3B A0 00 00 */	li r29, 0
lbl_8052E65C:
/* 8052E65C  7F A3 EB 78 */	mr r3, r29
/* 8052E660  39 61 00 30 */	addi r11, r1, 0x30
/* 8052E664  4B B6 C8 BD */	bl func_8009AF20
/* 8052E668  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052E66C  7C 08 03 A6 */	mtlr r0
/* 8052E670  38 21 00 30 */	addi r1, r1, 0x30
/* 8052E674  4E 80 00 20 */	blr 
