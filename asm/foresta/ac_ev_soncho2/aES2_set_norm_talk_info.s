lbl_80524B70:
/* 80524B70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80524B74  7C 08 02 A6 */	mflr r0
/* 80524B78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80524B7C  7C 60 1B 78 */	mr r0, r3
/* 80524B80  38 60 00 01 */	li r3, 1
/* 80524B84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80524B88  7C 1F 03 78 */	mr r31, r0
/* 80524B8C  4B E7 3C BD */	bl mDemo_Set_talk_turn
/* 80524B90  38 60 00 03 */	li r3, 3
/* 80524B94  4B E7 3D 8D */	bl mDemo_Set_camera
/* 80524B98  7F E3 FB 78 */	mr r3, r31
/* 80524B9C  38 80 00 05 */	li r4, 5
/* 80524BA0  4B FF FF C5 */	bl aES2_change_talk_proc
/* 80524BA4  88 1F 09 AE */	lbz r0, 0x9ae(r31)
/* 80524BA8  2C 00 00 66 */	cmpwi r0, 0x66
/* 80524BAC  41 82 00 60 */	beq lbl_80524C0C
/* 80524BB0  40 80 00 A8 */	bge lbl_80524C58
/* 80524BB4  2C 00 00 65 */	cmpwi r0, 0x65
/* 80524BB8  40 80 00 08 */	bge lbl_80524BC0
/* 80524BBC  48 00 00 9C */	b lbl_80524C58
lbl_80524BC0:
/* 80524BC0  4B EC 8E 79 */	bl mSC_LightHouse_Talk_After_Check
/* 80524BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80524BC8  41 82 00 2C */	beq lbl_80524BF4
/* 80524BCC  4B B3 81 29 */	bl fqrand
/* 80524BD0  3C 60 80 65 */	lis r3, lit_568@ha /* 0x80649190@ha */
/* 80524BD4  C0 03 91 90 */	lfs f0, lit_568@l(r3)  /* 0x80649190@l */
/* 80524BD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80524BDC  FC 00 00 1E */	fctiwz f0, f0
/* 80524BE0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80524BE4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80524BE8  38 63 33 FA */	addi r3, r3, 0x33fa
/* 80524BEC  4B E7 39 29 */	bl mDemo_Set_msg_num
/* 80524BF0  48 00 01 7C */	b lbl_80524D6C
lbl_80524BF4:
/* 80524BF4  38 60 33 F4 */	li r3, 0x33f4
/* 80524BF8  4B E7 39 1D */	bl mDemo_Set_msg_num
/* 80524BFC  7F E3 FB 78 */	mr r3, r31
/* 80524C00  38 80 00 03 */	li r4, 3
/* 80524C04  4B FF FF 61 */	bl aES2_change_talk_proc
/* 80524C08  48 00 01 64 */	b lbl_80524D6C
lbl_80524C0C:
/* 80524C0C  4B EC 8E 2D */	bl mSC_LightHouse_Talk_After_Check
/* 80524C10  2C 03 00 00 */	cmpwi r3, 0
/* 80524C14  41 82 00 2C */	beq lbl_80524C40
/* 80524C18  4B B3 80 DD */	bl fqrand
/* 80524C1C  3C 60 80 65 */	lis r3, lit_568@ha /* 0x80649190@ha */
/* 80524C20  C0 03 91 90 */	lfs f0, lit_568@l(r3)  /* 0x80649190@l */
/* 80524C24  EC 00 00 72 */	fmuls f0, f0, f1
/* 80524C28  FC 00 00 1E */	fctiwz f0, f0
/* 80524C2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80524C30  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80524C34  38 63 34 11 */	addi r3, r3, 0x3411
/* 80524C38  4B E7 38 DD */	bl mDemo_Set_msg_num
/* 80524C3C  48 00 01 30 */	b lbl_80524D6C
lbl_80524C40:
/* 80524C40  38 60 34 0B */	li r3, 0x340b
/* 80524C44  4B E7 38 D1 */	bl mDemo_Set_msg_num
/* 80524C48  7F E3 FB 78 */	mr r3, r31
/* 80524C4C  38 80 00 03 */	li r4, 3
/* 80524C50  4B FF FF 15 */	bl aES2_change_talk_proc
/* 80524C54  48 00 01 18 */	b lbl_80524D6C
lbl_80524C58:
/* 80524C58  7F E3 FB 78 */	mr r3, r31
/* 80524C5C  38 80 00 05 */	li r4, 5
/* 80524C60  4B FF FF 05 */	bl aES2_change_talk_proc
/* 80524C64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80524C68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80524C6C  3C 63 00 02 */	addis r3, r3, 2
/* 80524C70  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 80524C74  28 00 00 04 */	cmplwi r0, 4
/* 80524C78  40 82 00 24 */	bne lbl_80524C9C
/* 80524C7C  7F E3 FB 78 */	mr r3, r31
/* 80524C80  38 80 00 09 */	li r4, 9
/* 80524C84  4B FF FC B9 */	bl func_8052493C
/* 80524C88  4B E7 38 8D */	bl mDemo_Set_msg_num
/* 80524C8C  7F E3 FB 78 */	mr r3, r31
/* 80524C90  38 80 00 02 */	li r4, 2
/* 80524C94  4B FF FE D1 */	bl aES2_change_talk_proc
/* 80524C98  48 00 00 D4 */	b lbl_80524D6C
lbl_80524C9C:
/* 80524C9C  88 7F 09 AE */	lbz r3, 0x9ae(r31)
/* 80524CA0  4B EC 77 55 */	bl mSC_trophy_get
/* 80524CA4  2C 03 00 00 */	cmpwi r3, 0
/* 80524CA8  41 82 00 74 */	beq lbl_80524D1C
/* 80524CAC  A0 7F 09 98 */	lhz r3, 0x998(r31)
/* 80524CB0  38 C0 FF FF */	li r6, -1
/* 80524CB4  88 9F 09 9A */	lbz r4, 0x99a(r31)
/* 80524CB8  88 BF 09 9B */	lbz r5, 0x99b(r31)
/* 80524CBC  88 FF 09 AE */	lbz r7, 0x9ae(r31)
/* 80524CC0  4B E5 8B 25 */	bl mCD_calendar_event_check
/* 80524CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80524CC8  41 82 00 34 */	beq lbl_80524CFC
/* 80524CCC  4B B3 80 29 */	bl fqrand
/* 80524CD0  3C 80 80 65 */	lis r4, lit_568@ha /* 0x80649190@ha */
/* 80524CD4  7F E3 FB 78 */	mr r3, r31
/* 80524CD8  C0 04 91 90 */	lfs f0, lit_568@l(r4)  /* 0x80649190@l */
/* 80524CDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80524CE0  FC 00 00 1E */	fctiwz f0, f0
/* 80524CE4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80524CE8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80524CEC  38 84 00 06 */	addi r4, r4, 6
/* 80524CF0  4B FF FC 4D */	bl func_8052493C
/* 80524CF4  4B E7 38 21 */	bl mDemo_Set_msg_num
/* 80524CF8  48 00 00 14 */	b lbl_80524D0C
lbl_80524CFC:
/* 80524CFC  7F E3 FB 78 */	mr r3, r31
/* 80524D00  38 80 00 05 */	li r4, 5
/* 80524D04  4B FF FC 39 */	bl func_8052493C
/* 80524D08  4B E7 38 0D */	bl mDemo_Set_msg_num
lbl_80524D0C:
/* 80524D0C  7F E3 FB 78 */	mr r3, r31
/* 80524D10  38 80 00 04 */	li r4, 4
/* 80524D14  4B FF FE 51 */	bl aES2_change_talk_proc
/* 80524D18  48 00 00 54 */	b lbl_80524D6C
lbl_80524D1C:
/* 80524D1C  7F E3 FB 78 */	mr r3, r31
/* 80524D20  38 80 00 00 */	li r4, 0
/* 80524D24  4B FF FE 41 */	bl aES2_change_talk_proc
/* 80524D28  A0 7F 09 98 */	lhz r3, 0x998(r31)
/* 80524D2C  38 C0 FF FF */	li r6, -1
/* 80524D30  88 9F 09 9A */	lbz r4, 0x99a(r31)
/* 80524D34  88 BF 09 9B */	lbz r5, 0x99b(r31)
/* 80524D38  88 FF 09 AE */	lbz r7, 0x9ae(r31)
/* 80524D3C  4B E5 8A A9 */	bl mCD_calendar_event_check
/* 80524D40  2C 03 00 00 */	cmpwi r3, 0
/* 80524D44  41 82 00 18 */	beq lbl_80524D5C
/* 80524D48  7F E3 FB 78 */	mr r3, r31
/* 80524D4C  38 80 00 01 */	li r4, 1
/* 80524D50  4B FF FB ED */	bl func_8052493C
/* 80524D54  4B E7 37 C1 */	bl mDemo_Set_msg_num
/* 80524D58  48 00 00 14 */	b lbl_80524D6C
lbl_80524D5C:
/* 80524D5C  7F E3 FB 78 */	mr r3, r31
/* 80524D60  38 80 00 00 */	li r4, 0
/* 80524D64  4B FF FB D9 */	bl func_8052493C
/* 80524D68  4B E7 37 AD */	bl mDemo_Set_msg_num
lbl_80524D6C:
/* 80524D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80524D70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80524D74  7C 08 03 A6 */	mtlr r0
/* 80524D78  38 21 00 20 */	addi r1, r1, 0x20
/* 80524D7C  4E 80 00 20 */	blr 
