lbl_805D29EC:
/* 805D29EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D29F0  7C 08 02 A6 */	mflr r0
/* 805D29F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D29F8  38 00 00 00 */	li r0, 0
/* 805D29FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D2A00  7C 7F 1B 78 */	mr r31, r3
/* 805D2A04  98 03 06 99 */	stb r0, 0x699(r3)
/* 805D2A08  38 00 00 01 */	li r0, 1
/* 805D2A0C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D2A10  98 1F 06 98 */	stb r0, 0x698(r31)
/* 805D2A14  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D2A18  4B DC 34 F9 */	bl chkTrigger
/* 805D2A1C  2C 03 00 00 */	cmpwi r3, 0
/* 805D2A20  41 82 00 54 */	beq lbl_805D2A74
/* 805D2A24  38 00 00 01 */	li r0, 1
/* 805D2A28  7F E3 FB 78 */	mr r3, r31
/* 805D2A2C  98 1F 06 CC */	stb r0, 0x6cc(r31)
/* 805D2A30  4B FF FF 05 */	bl mDE_set_undo_texture
/* 805D2A34  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 805D2A38  2C 00 00 02 */	cmpwi r0, 2
/* 805D2A3C  41 82 00 20 */	beq lbl_805D2A5C
/* 805D2A40  40 80 00 28 */	bge lbl_805D2A68
/* 805D2A44  2C 00 00 01 */	cmpwi r0, 1
/* 805D2A48  40 80 00 08 */	bge lbl_805D2A50
/* 805D2A4C  48 00 00 1C */	b lbl_805D2A68
lbl_805D2A50:
/* 805D2A50  38 60 04 51 */	li r3, 0x451
/* 805D2A54  48 05 B2 B1 */	bl sAdo_SysTrgStart
/* 805D2A58  48 00 00 D4 */	b lbl_805D2B2C
lbl_805D2A5C:
/* 805D2A5C  38 60 04 52 */	li r3, 0x452
/* 805D2A60  48 05 B2 A5 */	bl sAdo_SysTrgStart
/* 805D2A64  48 00 00 C8 */	b lbl_805D2B2C
lbl_805D2A68:
/* 805D2A68  38 60 04 50 */	li r3, 0x450
/* 805D2A6C  48 05 B2 99 */	bl sAdo_SysTrgStart
/* 805D2A70  48 00 00 BC */	b lbl_805D2B2C
lbl_805D2A74:
/* 805D2A74  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D2A78  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D2A7C  4B DC 33 F5 */	bl chkButton
/* 805D2A80  2C 03 00 00 */	cmpwi r3, 0
/* 805D2A84  41 82 00 A8 */	beq lbl_805D2B2C
/* 805D2A88  88 1F 06 CC */	lbz r0, 0x6cc(r31)
/* 805D2A8C  28 00 00 00 */	cmplwi r0, 0
/* 805D2A90  41 82 00 9C */	beq lbl_805D2B2C
/* 805D2A94  80 9F 06 68 */	lwz r4, 0x668(r31)
/* 805D2A98  7F E3 FB 78 */	mr r3, r31
/* 805D2A9C  80 BF 06 6C */	lwz r5, 0x66c(r31)
/* 805D2AA0  4B FF F4 01 */	bl mDE_get_pal_on_cursor
/* 805D2AA4  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 805D2AA8  2C 00 00 02 */	cmpwi r0, 2
/* 805D2AAC  41 82 00 40 */	beq lbl_805D2AEC
/* 805D2AB0  40 80 00 68 */	bge lbl_805D2B18
/* 805D2AB4  2C 00 00 01 */	cmpwi r0, 1
/* 805D2AB8  40 80 00 08 */	bge lbl_805D2AC0
/* 805D2ABC  48 00 00 5C */	b lbl_805D2B18
lbl_805D2AC0:
/* 805D2AC0  3C 60 80 6D */	lis r3, mDE_pen_2@ha /* 0x806CBC90@ha */
/* 805D2AC4  80 BF 06 68 */	lwz r5, 0x668(r31)
/* 805D2AC8  38 83 BC 90 */	addi r4, r3, mDE_pen_2@l /* 0x806CBC90@l */
/* 805D2ACC  80 DF 06 6C */	lwz r6, 0x66c(r31)
/* 805D2AD0  7F E3 FB 78 */	mr r3, r31
/* 805D2AD4  38 E0 00 02 */	li r7, 2
/* 805D2AD8  39 00 00 02 */	li r8, 2
/* 805D2ADC  39 20 00 00 */	li r9, 0
/* 805D2AE0  39 40 00 01 */	li r10, 1
/* 805D2AE4  4B FF FA 45 */	bl mDE_set_texture_template
/* 805D2AE8  48 00 00 44 */	b lbl_805D2B2C
lbl_805D2AEC:
/* 805D2AEC  3C 60 80 6D */	lis r3, mDE_pen_3@ha /* 0x806CBC94@ha */
/* 805D2AF0  80 BF 06 68 */	lwz r5, 0x668(r31)
/* 805D2AF4  38 83 BC 94 */	addi r4, r3, mDE_pen_3@l /* 0x806CBC94@l */
/* 805D2AF8  80 DF 06 6C */	lwz r6, 0x66c(r31)
/* 805D2AFC  7F E3 FB 78 */	mr r3, r31
/* 805D2B00  38 E0 00 03 */	li r7, 3
/* 805D2B04  39 00 00 03 */	li r8, 3
/* 805D2B08  39 20 00 00 */	li r9, 0
/* 805D2B0C  39 40 00 02 */	li r10, 2
/* 805D2B10  4B FF FA 19 */	bl mDE_set_texture_template
/* 805D2B14  48 00 00 18 */	b lbl_805D2B2C
lbl_805D2B18:
/* 805D2B18  80 9F 06 68 */	lwz r4, 0x668(r31)
/* 805D2B1C  7F E3 FB 78 */	mr r3, r31
/* 805D2B20  80 BF 06 6C */	lwz r5, 0x66c(r31)
/* 805D2B24  88 DF 06 A4 */	lbz r6, 0x6a4(r31)
/* 805D2B28  4B FF F3 F9 */	bl mDE_set_pal_on_cursor
lbl_805D2B2C:
/* 805D2B2C  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 805D2B30  2C 00 00 02 */	cmpwi r0, 2
/* 805D2B34  41 82 00 AC */	beq lbl_805D2BE0
/* 805D2B38  40 80 01 C4 */	bge lbl_805D2CFC
/* 805D2B3C  2C 00 00 01 */	cmpwi r0, 1
/* 805D2B40  40 80 00 08 */	bge lbl_805D2B48
/* 805D2B44  48 00 01 B8 */	b lbl_805D2CFC
lbl_805D2B48:
/* 805D2B48  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 805D2B4C  2C 00 00 00 */	cmpwi r0, 0
/* 805D2B50  40 82 00 10 */	bne lbl_805D2B60
/* 805D2B54  7F E3 FB 78 */	mr r3, r31
/* 805D2B58  38 80 00 01 */	li r4, 1
/* 805D2B5C  4B FF E9 C1 */	bl mDE_cursor_move
lbl_805D2B60:
/* 805D2B60  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 805D2B64  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D2B68  40 82 00 10 */	bne lbl_805D2B78
/* 805D2B6C  7F E3 FB 78 */	mr r3, r31
/* 805D2B70  38 80 00 02 */	li r4, 2
/* 805D2B74  4B FF E9 A9 */	bl mDE_cursor_move
lbl_805D2B78:
/* 805D2B78  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 805D2B7C  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805D2B80  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 805D2B84  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D2B88  41 82 00 08 */	beq lbl_805D2B90
/* 805D2B8C  48 00 00 10 */	b lbl_805D2B9C
lbl_805D2B90:
/* 805D2B90  38 00 00 01 */	li r0, 1
/* 805D2B94  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D2B98  48 00 00 0C */	b lbl_805D2BA4
lbl_805D2B9C:
/* 805D2B9C  38 00 00 02 */	li r0, 2
/* 805D2BA0  90 1F 06 88 */	stw r0, 0x688(r31)
lbl_805D2BA4:
/* 805D2BA4  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 805D2BA8  2C 00 00 00 */	cmpwi r0, 0
/* 805D2BAC  41 82 00 08 */	beq lbl_805D2BB4
/* 805D2BB0  48 00 00 18 */	b lbl_805D2BC8
lbl_805D2BB4:
/* 805D2BB4  38 00 00 01 */	li r0, 1
/* 805D2BB8  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D2BBC  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 805D2BC0  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D2BC4  48 00 01 54 */	b lbl_805D2D18
lbl_805D2BC8:
/* 805D2BC8  38 00 00 02 */	li r0, 2
/* 805D2BCC  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D2BD0  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 805D2BD4  38 03 00 05 */	addi r0, r3, 5
/* 805D2BD8  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D2BDC  48 00 01 3C */	b lbl_805D2D18
lbl_805D2BE0:
/* 805D2BE0  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 805D2BE4  2C 00 00 00 */	cmpwi r0, 0
/* 805D2BE8  40 82 00 20 */	bne lbl_805D2C08
/* 805D2BEC  7F E3 FB 78 */	mr r3, r31
/* 805D2BF0  38 80 00 01 */	li r4, 1
/* 805D2BF4  4B FF E9 29 */	bl mDE_cursor_move
/* 805D2BF8  7F E3 FB 78 */	mr r3, r31
/* 805D2BFC  38 80 00 01 */	li r4, 1
/* 805D2C00  4B FF E9 1D */	bl mDE_cursor_move
/* 805D2C04  48 00 00 18 */	b lbl_805D2C1C
lbl_805D2C08:
/* 805D2C08  2C 00 00 01 */	cmpwi r0, 1
/* 805D2C0C  40 82 00 10 */	bne lbl_805D2C1C
/* 805D2C10  7F E3 FB 78 */	mr r3, r31
/* 805D2C14  38 80 00 01 */	li r4, 1
/* 805D2C18  4B FF E9 05 */	bl mDE_cursor_move
lbl_805D2C1C:
/* 805D2C1C  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 805D2C20  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D2C24  40 82 00 20 */	bne lbl_805D2C44
/* 805D2C28  7F E3 FB 78 */	mr r3, r31
/* 805D2C2C  38 80 00 02 */	li r4, 2
/* 805D2C30  4B FF E8 ED */	bl mDE_cursor_move
/* 805D2C34  7F E3 FB 78 */	mr r3, r31
/* 805D2C38  38 80 00 02 */	li r4, 2
/* 805D2C3C  4B FF E8 E1 */	bl mDE_cursor_move
/* 805D2C40  48 00 00 18 */	b lbl_805D2C58
lbl_805D2C44:
/* 805D2C44  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805D2C48  40 82 00 10 */	bne lbl_805D2C58
/* 805D2C4C  7F E3 FB 78 */	mr r3, r31
/* 805D2C50  38 80 00 02 */	li r4, 2
/* 805D2C54  4B FF E8 C9 */	bl mDE_cursor_move
lbl_805D2C58:
/* 805D2C58  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 805D2C5C  90 1F 06 80 */	stw r0, 0x680(r31)
/* 805D2C60  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 805D2C64  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805D2C68  41 82 00 14 */	beq lbl_805D2C7C
/* 805D2C6C  40 80 00 28 */	bge lbl_805D2C94
/* 805D2C70  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805D2C74  40 80 00 14 */	bge lbl_805D2C88
/* 805D2C78  48 00 00 1C */	b lbl_805D2C94
lbl_805D2C7C:
/* 805D2C7C  38 00 00 01 */	li r0, 1
/* 805D2C80  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D2C84  48 00 00 18 */	b lbl_805D2C9C
lbl_805D2C88:
/* 805D2C88  38 00 00 02 */	li r0, 2
/* 805D2C8C  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D2C90  48 00 00 0C */	b lbl_805D2C9C
lbl_805D2C94:
/* 805D2C94  38 00 00 03 */	li r0, 3
/* 805D2C98  90 1F 06 88 */	stw r0, 0x688(r31)
lbl_805D2C9C:
/* 805D2C9C  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 805D2CA0  2C 00 00 01 */	cmpwi r0, 1
/* 805D2CA4  41 82 00 28 */	beq lbl_805D2CCC
/* 805D2CA8  40 80 00 3C */	bge lbl_805D2CE4
/* 805D2CAC  2C 00 00 00 */	cmpwi r0, 0
/* 805D2CB0  40 80 00 08 */	bge lbl_805D2CB8
/* 805D2CB4  48 00 00 30 */	b lbl_805D2CE4
lbl_805D2CB8:
/* 805D2CB8  38 00 00 01 */	li r0, 1
/* 805D2CBC  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D2CC0  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 805D2CC4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D2CC8  48 00 00 50 */	b lbl_805D2D18
lbl_805D2CCC:
/* 805D2CCC  38 00 00 02 */	li r0, 2
/* 805D2CD0  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D2CD4  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 805D2CD8  38 03 00 05 */	addi r0, r3, 5
/* 805D2CDC  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D2CE0  48 00 00 38 */	b lbl_805D2D18
lbl_805D2CE4:
/* 805D2CE4  38 00 00 03 */	li r0, 3
/* 805D2CE8  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 805D2CEC  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 805D2CF0  38 03 00 0A */	addi r0, r3, 0xa
/* 805D2CF4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D2CF8  48 00 00 20 */	b lbl_805D2D18
lbl_805D2CFC:
/* 805D2CFC  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 805D2D00  38 00 00 01 */	li r0, 1
/* 805D2D04  90 7F 06 80 */	stw r3, 0x680(r31)
/* 805D2D08  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 805D2D0C  90 7F 06 84 */	stw r3, 0x684(r31)
/* 805D2D10  90 1F 06 88 */	stw r0, 0x688(r31)
/* 805D2D14  90 1F 06 8C */	stw r0, 0x68c(r31)
lbl_805D2D18:
/* 805D2D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D2D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D2D20  7C 08 03 A6 */	mtlr r0
/* 805D2D24  38 21 00 10 */	addi r1, r1, 0x10
/* 805D2D28  4E 80 00 20 */	blr 
