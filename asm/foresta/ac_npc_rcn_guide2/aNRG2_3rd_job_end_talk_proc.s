lbl_80570DA4:
/* 80570DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570DA8  7C 08 02 A6 */	mflr r0
/* 80570DAC  38 80 00 09 */	li r4, 9
/* 80570DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570DB8  7C 7F 1B 78 */	mr r31, r3
/* 80570DBC  38 60 00 04 */	li r3, 4
/* 80570DC0  4B E2 76 BD */	bl mDemo_Get_OrderValue
/* 80570DC4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80570DC8  41 82 00 70 */	beq lbl_80570E38
/* 80570DCC  7F E3 FB 78 */	mr r3, r31
/* 80570DD0  4B FF FF 35 */	bl aNRG2_job_end_talk_proc
/* 80570DD4  38 60 00 04 */	li r3, 4
/* 80570DD8  38 80 00 01 */	li r4, 1
/* 80570DDC  38 A0 00 02 */	li r5, 2
/* 80570DE0  4B E2 76 59 */	bl mDemo_Set_OrderValue
/* 80570DE4  38 60 00 05 */	li r3, 5
/* 80570DE8  38 80 00 00 */	li r4, 0
/* 80570DEC  38 A0 25 1D */	li r5, 0x251d
/* 80570DF0  4B E2 76 49 */	bl mDemo_Set_OrderValue
/* 80570DF4  38 60 00 05 */	li r3, 5
/* 80570DF8  38 80 00 01 */	li r4, 1
/* 80570DFC  38 A0 00 07 */	li r5, 7
/* 80570E00  4B E2 76 39 */	bl mDemo_Set_OrderValue
/* 80570E04  38 60 00 05 */	li r3, 5
/* 80570E08  38 80 00 02 */	li r4, 2
/* 80570E0C  38 A0 00 00 */	li r5, 0
/* 80570E10  4B E2 76 29 */	bl mDemo_Set_OrderValue
/* 80570E14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80570E18  38 00 00 01 */	li r0, 1
/* 80570E1C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80570E20  38 60 00 04 */	li r3, 4
/* 80570E24  3C A4 00 02 */	addis r5, r4, 2
/* 80570E28  38 80 00 09 */	li r4, 9
/* 80570E2C  98 05 61 44 */	stb r0, 0x6144(r5)
/* 80570E30  38 A0 00 00 */	li r5, 0
/* 80570E34  4B E2 76 05 */	bl mDemo_Set_OrderValue
lbl_80570E38:
/* 80570E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570E40  7C 08 03 A6 */	mtlr r0
/* 80570E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80570E48  4E 80 00 20 */	blr 
