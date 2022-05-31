lbl_8039E81C:
/* 8039E81C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8039E820  7C 08 02 A6 */	mflr r0
/* 8039E824  90 01 00 34 */	stw r0, 0x34(r1)
/* 8039E828  39 61 00 30 */	addi r11, r1, 0x30
/* 8039E82C  4B CF C6 A5 */	bl func_8009AED0
/* 8039E830  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039E834  38 00 00 00 */	li r0, 0
/* 8039E838  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039E83C  98 01 00 0A */	stb r0, 0xa(r1)
/* 8039E840  3C C3 00 02 */	addis r6, r3, 2
/* 8039E844  3B A1 00 0C */	addi r29, r1, 0xc
/* 8039E848  88 A6 61 25 */	lbz r5, 0x6125(r6)
/* 8039E84C  38 60 00 01 */	li r3, 1
/* 8039E850  88 86 61 23 */	lbz r4, 0x6123(r6)
/* 8039E854  88 06 61 22 */	lbz r0, 0x6122(r6)
/* 8039E858  98 A1 00 08 */	stb r5, 8(r1)
/* 8039E85C  98 81 00 09 */	stb r4, 9(r1)
/* 8039E860  98 01 00 0B */	stb r0, 0xb(r1)
/* 8039E864  4B FF D3 01 */	bl init_special_event
/* 8039E868  2C 03 00 00 */	cmpwi r3, 0
/* 8039E86C  41 82 00 94 */	beq lbl_8039E900
/* 8039E870  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039E874  3C 60 80 65 */	lis r3, event_schedule_data@ha /* 0x8065181C@ha */
/* 8039E878  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039E87C  38 00 00 01 */	li r0, 1
/* 8039E880  3C 84 00 02 */	addis r4, r4, 2
/* 8039E884  3B C3 18 1C */	addi r30, r3, event_schedule_data@l /* 0x8065181C@l */
/* 8039E888  98 04 05 55 */	stb r0, 0x555(r4)
/* 8039E88C  3B 80 00 00 */	li r28, 0
/* 8039E890  3B E0 00 00 */	li r31, 0
lbl_8039E894:
/* 8039E894  7F A3 EB 78 */	mr r3, r29
/* 8039E898  7C 9E FA 14 */	add r4, r30, r31
/* 8039E89C  38 A0 00 0C */	li r5, 0xc
/* 8039E8A0  4B C6 4B F1 */	bl memcpy
/* 8039E8A4  7F A3 EB 78 */	mr r3, r29
/* 8039E8A8  4B FF D6 8D */	bl update_special_event
/* 8039E8AC  2C 03 00 00 */	cmpwi r3, 0
/* 8039E8B0  41 82 00 40 */	beq lbl_8039E8F0
/* 8039E8B4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8039E8B8  4B FF E4 49 */	bl decode_date
/* 8039E8BC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8039E8C0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8039E8C4  4B FF E4 3D */	bl decode_date
/* 8039E8C8  90 61 00 10 */	stw r3, 0x10(r1)
/* 8039E8CC  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039E8D0  A0 81 00 0C */	lhz r4, 0xc(r1)
/* 8039E8D4  A0 A1 00 10 */	lhz r5, 0x10(r1)
/* 8039E8D8  4B FF C8 C9 */	bl check_date_range
/* 8039E8DC  2C 03 00 00 */	cmpwi r3, 0
/* 8039E8E0  41 82 00 10 */	beq lbl_8039E8F0
/* 8039E8E4  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039E8E8  7F A4 EB 78 */	mr r4, r29
/* 8039E8EC  4B FF CD E9 */	bl add_event_today
lbl_8039E8F0:
/* 8039E8F0  3B 9C 00 01 */	addi r28, r28, 1
/* 8039E8F4  3B FF 00 0C */	addi r31, r31, 0xc
/* 8039E8F8  2C 1C 00 86 */	cmpwi r28, 0x86
/* 8039E8FC  41 80 FF 98 */	blt lbl_8039E894
lbl_8039E900:
/* 8039E900  39 61 00 30 */	addi r11, r1, 0x30
/* 8039E904  4B CF C6 19 */	bl func_8009AF1C
/* 8039E908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039E90C  7C 08 03 A6 */	mtlr r0
/* 8039E910  38 21 00 30 */	addi r1, r1, 0x30
/* 8039E914  4E 80 00 20 */	blr 
