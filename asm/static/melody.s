.include "macros.inc"

.section .text

.org 0x8001561C

.global Na_MelodyInit
Na_MelodyInit:
/* 8001561C 0001257C  38 00 00 00 */	li r0, 0
/* 80015620 00012580  90 0D 88 10 */	stw r0, current_sub_track-_SDA_BASE_(r13)
/* 80015624 00012584  38 00 FF FF */	li r0, -1
/* 80015628 00012588  90 0D 88 14 */	stw r0, na_melody_id_hist-_SDA_BASE_(r13)
/* 8001562C 0001258C  38 00 FF FF */	li r0, -1
/* 80015630 00012590  38 6D 88 14 */	addi r3, r13, na_melody_id_hist-_SDA_BASE_
/* 80015634 00012594  90 03 00 04 */	stw r0, 4(r3)
/* 80015638 00012598  4E 80 00 20 */	blr 

.global Na_Inst
Na_Inst:
/* 8001563C 0001259C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015640 000125A0  7C 08 02 A6 */	mflr r0
/* 80015644 000125A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015648 000125A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001564C 000125AC  7C 7F 1B 78 */	mr r31, r3
/* 80015650 000125B0  90 81 00 08 */	stw r4, 8(r1)
/* 80015654 000125B4  88 0D 87 75 */	lbz r0, lbl_802182F5-_SDA_BASE_(r13)
/* 80015658 000125B8  28 00 00 00 */	cmplwi r0, 0
/* 8001565C 000125BC  40 82 00 20 */	bne lbl_8001567C
/* 80015660 000125C0  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80015664 000125C4  28 00 00 FF */	cmplwi r0, 0xff
/* 80015668 000125C8  41 82 00 10 */	beq lbl_80015678
/* 8001566C 000125CC  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80015670 000125D0  28 00 00 FE */	cmplwi r0, 0xfe
/* 80015674 000125D4  40 82 00 08 */	bne lbl_8001567C
lbl_80015678:
/* 80015678 000125D8  48 00 00 2C */	b lbl_800156A4
lbl_8001567C:
/* 8001567C 000125DC  7F E3 07 34 */	extsh r3, r31
/* 80015680 000125E0  48 00 02 1D */	bl Na_MelodyGetSubTrackNum
/* 80015684 000125E4  7C 64 1B 78 */	mr r4, r3
/* 80015688 000125E8  7F E3 FB 78 */	mr r3, r31
/* 8001568C 000125EC  80 A1 00 08 */	lwz r5, 8(r1)
/* 80015690 000125F0  48 00 00 29 */	bl Na_MelodyStart__FUssPCUc
/* 80015694 000125F4  3C 60 01 00 */	lis r3, 0x01000600@ha
/* 80015698 000125F8  38 63 06 00 */	addi r3, r3, 0x01000600@l
/* 8001569C 000125FC  C0 22 81 78 */	lfs f1, @184-_SDA2_BASE_(r2)
/* 800156A0 00012600  48 00 FB 81 */	bl Nap_SetF32__FUlf
lbl_800156A4:
/* 800156A4 00012604  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800156A8 00012608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800156AC 0001260C  7C 08 03 A6 */	mtlr r0
/* 800156B0 00012610  38 21 00 20 */	addi r1, r1, 0x20
/* 800156B4 00012614  4E 80 00 20 */	blr 

.global Na_MelodyStart__FUssPCUc
Na_MelodyStart__FUssPCUc:
/* 800156B8 00012618  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800156BC 0001261C  7C 08 02 A6 */	mflr r0
/* 800156C0 00012620  90 01 00 44 */	stw r0, 0x44(r1)
/* 800156C4 00012624  39 61 00 40 */	addi r11, r1, 0x40
/* 800156C8 00012628  48 08 57 ED */	bl func_8009AEB4
/* 800156CC 0001262C  7C 78 1B 78 */	mr r24, r3
/* 800156D0 00012630  7C 9C 23 78 */	mr r28, r4
/* 800156D4 00012634  90 A1 00 08 */	stw r5, 8(r1)
/* 800156D8 00012638  7F 80 07 34 */	extsh r0, r28
/* 800156DC 0001263C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800156E0 00012640  54 00 40 2E */	slwi r0, r0, 8
/* 800156E4 00012644  64 03 06 00 */	oris r3, r0, 0x600
/* 800156E8 00012648  38 80 00 01 */	li r4, 1
/* 800156EC 0001264C  48 00 FB B5 */	bl Nap_SetS8__FUlSc
/* 800156F0 00012650  48 00 FC 31 */	bl Nap_SendStart__Fv
/* 800156F4 00012654  90 61 00 0C */	stw r3, 0xc(r1)
/* 800156F8 00012658  48 01 06 09 */	bl Nap_WaitVsync__Fv
/* 800156FC 0001265C  3B 40 00 F8 */	li r26, 0xf8
/* 80015700 00012660  3C 60 80 21 */	lis r3, AG@ha
/* 80015704 00012664  38 63 E8 08 */	addi r3, r3, AG@l
/* 80015708 00012668  80 63 37 A0 */	lwz r3, 0x37a0(r3)
/* 8001570C 0001266C  A3 E3 00 04 */	lhz r31, 4(r3)
/* 80015710 00012670  7F 80 07 34 */	extsh r0, r28
/* 80015714 00012674  2C 00 00 07 */	cmpwi r0, 7
/* 80015718 00012678  41 82 00 1C */	beq lbl_80015734
/* 8001571C 0001267C  40 80 00 0C */	bge lbl_80015728
/* 80015720 00012680  2C 00 00 06 */	cmpwi r0, 6
/* 80015724 00012684  48 00 00 1C */	b lbl_80015740
lbl_80015728:
/* 80015728 00012688  2C 00 00 0F */	cmpwi r0, 0xf
/* 8001572C 0001268C  41 82 00 10 */	beq lbl_8001573C
/* 80015730 00012690  48 00 00 10 */	b lbl_80015740
lbl_80015734:
/* 80015734 00012694  3B FF 06 00 */	addi r31, r31, 0x600
/* 80015738 00012698  48 00 00 08 */	b lbl_80015740
lbl_8001573C:
/* 8001573C 0001269C  3B FF 0C 00 */	addi r31, r31, 0xc00
lbl_80015740:
/* 80015740 000126A0  3C 60 80 21 */	lis r3, AG@ha
/* 80015744 000126A4  38 63 E8 08 */	addi r3, r3, AG@l
/* 80015748 000126A8  80 63 37 A0 */	lwz r3, 0x37a0(r3)
/* 8001574C 000126AC  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80015750 000126B0  7F 63 02 14 */	add r27, r3, r0
/* 80015754 000126B4  3C 60 80 21 */	lis r3, AG@ha
/* 80015758 000126B8  38 63 E8 08 */	addi r3, r3, AG@l
/* 8001575C 000126BC  83 C3 28 50 */	lwz r30, 0x2850(r3)
/* 80015760 000126C0  57 00 04 3E */	clrlwi r0, r24, 0x10
/* 80015764 000126C4  54 04 10 3A */	slwi r4, r0, 2
/* 80015768 000126C8  3C 60 80 0B */	lis r3, melody_seq_size@ha
/* 8001576C 000126CC  38 03 9B 98 */	addi r0, r3, melody_seq_size@l
/* 80015770 000126D0  7C 60 22 14 */	add r3, r0, r4
/* 80015774 000126D4  82 C3 00 00 */	lwz r22, 0(r3)
/* 80015778 000126D8  7F 40 07 34 */	extsh r0, r26
/* 8001577C 000126DC  54 03 20 36 */	slwi r3, r0, 4
/* 80015780 000126E0  38 03 00 18 */	addi r0, r3, 0x18
/* 80015784 000126E4  7E BE 00 AE */	lbzx r21, r30, r0
/* 80015788 000126E8  7E B5 07 74 */	extsb r21, r21
/* 8001578C 000126EC  7F 40 07 34 */	extsh r0, r26
/* 80015790 000126F0  54 03 20 36 */	slwi r3, r0, 4
/* 80015794 000126F4  38 03 00 10 */	addi r0, r3, 0x10
/* 80015798 000126F8  7C BE 00 2E */	lwzx r5, r30, r0
/* 8001579C 000126FC  57 00 04 3E */	clrlwi r0, r24, 0x10
/* 800157A0 00012700  54 04 10 3A */	slwi r4, r0, 2
/* 800157A4 00012704  3C 60 80 0B */	lis r3, melody_seq_offset@ha
/* 800157A8 00012708  38 03 A0 44 */	addi r0, r3, melody_seq_offset@l
/* 800157AC 0001270C  7C 60 22 14 */	add r3, r0, r4
/* 800157B0 00012710  80 03 00 00 */	lwz r0, 0(r3)
/* 800157B4 00012714  7E E5 02 14 */	add r23, r5, r0
/* 800157B8 00012718  7E E3 BB 78 */	mr r3, r23
/* 800157BC 0001271C  7F 64 DB 78 */	mr r4, r27
/* 800157C0 00012720  7E C5 B3 78 */	mr r5, r22
/* 800157C4 00012724  7E A6 AB 78 */	mr r6, r21
/* 800157C8 00012728  48 00 CD F9 */	bl Nas_FastCopy__FPUcPUcUll
/* 800157CC 0001272C  3B 3B 00 04 */	addi r25, r27, 4
/* 800157D0 00012730  3B A0 00 00 */	li r29, 0
/* 800157D4 00012734  48 00 00 18 */	b lbl_800157EC
lbl_800157D8:
/* 800157D8 00012738  57 A3 08 3C */	slwi r3, r29, 1
/* 800157DC 0001273C  7C 19 1A 2E */	lhzx r0, r25, r3
/* 800157E0 00012740  7C 00 FA 14 */	add r0, r0, r31
/* 800157E4 00012744  7C 19 1B 2E */	sthx r0, r25, r3
/* 800157E8 00012748  3B BD 00 01 */	addi r29, r29, 1
lbl_800157EC:
/* 800157EC 0001274C  2C 1D 00 13 */	cmpwi r29, 0x13
/* 800157F0 00012750  41 80 FF E8 */	blt lbl_800157D8
/* 800157F4 00012754  7F 80 07 34 */	extsh r0, r28
/* 800157F8 00012758  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800157FC 0001275C  54 00 40 2E */	slwi r0, r0, 8
/* 80015800 00012760  64 03 10 00 */	oris r3, r0, 0x1000
/* 80015804 00012764  80 81 00 08 */	lwz r4, 8(r1)
/* 80015808 00012768  38 00 00 00 */	li r0, 0
/* 8001580C 0001276C  48 00 FA 55 */	bl Nap_SetS32__FUll
/* 80015810 00012770  7F 80 07 34 */	extsh r0, r28
/* 80015814 00012774  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80015818 00012778  54 00 40 2E */	slwi r0, r0, 8
/* 8001581C 0001277C  64 00 06 00 */	oris r0, r0, 0x600
/* 80015820 00012780  60 03 00 02 */	ori r3, r0, 2
/* 80015824 00012784  7F 04 07 74 */	extsb r4, r24
/* 80015828 00012788  48 00 FA 79 */	bl Nap_SetS8__FUlSc
/* 8001582C 0001278C  7F 80 07 34 */	extsh r0, r28
/* 80015830 00012790  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80015834 00012794  54 00 40 2E */	slwi r0, r0, 8
/* 80015838 00012798  64 03 06 00 */	oris r3, r0, 0x600
/* 8001583C 0001279C  38 80 00 00 */	li r4, 0
/* 80015840 000127A0  48 00 FA 61 */	bl Nap_SetS8__FUlSc
/* 80015844 000127A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80015848 000127A8  48 08 56 B9 */	bl func_8009AF00
/* 8001584C 000127AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80015850 000127B0  7C 08 03 A6 */	mtlr r0
/* 80015854 000127B4  38 21 00 40 */	addi r1, r1, 0x40
/* 80015858 000127B8  4E 80 00 20 */	blr 

.global Na_InstCountGet
Na_InstCountGet:
/* 8001585C 000127BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015860 000127C0  7C 08 02 A6 */	mflr r0
/* 80015864 000127C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015868 000127C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001586C 000127CC  38 60 00 00 */	li r3, 0
/* 80015870 000127D0  38 80 00 06 */	li r4, 6
/* 80015874 000127D4  38 A0 00 04 */	li r5, 4
/* 80015878 000127D8  48 00 FF 89 */	bl Nap_ReadSubPort__Flll
/* 8001587C 000127DC  7C 7F 1B 78 */	mr r31, r3
/* 80015880 000127E0  3B FF FF FF */	addi r31, r31, -1
/* 80015884 000127E4  7F E3 FB 78 */	mr r3, r31
/* 80015888 000127E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001588C 000127EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015890 000127F0  7C 08 03 A6 */	mtlr r0
/* 80015894 000127F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80015898 000127F8  4E 80 00 20 */	blr 

.global Na_MelodyGetSubTrackNum
Na_MelodyGetSubTrackNum:
/* 8001589C 000127FC  7C 60 07 34 */	extsh r0, r3
/* 800158A0 00012800  2C 00 00 00 */	cmpwi r0, 0
/* 800158A4 00012804  40 82 00 0C */	bne lbl_800158B0
/* 800158A8 00012808  38 60 00 06 */	li r3, 6
/* 800158AC 0001280C  48 00 00 28 */	b lbl_800158D4
lbl_800158B0:
/* 800158B0 00012810  7C 60 07 34 */	extsh r0, r3
/* 800158B4 00012814  2C 00 00 FF */	cmpwi r0, 0xff
/* 800158B8 00012818  41 82 00 10 */	beq lbl_800158C8
/* 800158BC 0001281C  7C 60 07 34 */	extsh r0, r3
/* 800158C0 00012820  2C 00 00 FE */	cmpwi r0, 0xfe
/* 800158C4 00012824  40 82 00 0C */	bne lbl_800158D0
lbl_800158C8:
/* 800158C8 00012828  38 60 00 07 */	li r3, 7
/* 800158CC 0001282C  48 00 00 08 */	b lbl_800158D4
lbl_800158D0:
/* 800158D0 00012830  38 60 00 0F */	li r3, 0xf
lbl_800158D4:
/* 800158D4 00012834  4E 80 00 20 */	blr 

.global Na_FurnitureInst
Na_FurnitureInst:
/* 800158D8 00012838  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800158DC 0001283C  7C 08 02 A6 */	mflr r0
/* 800158E0 00012840  90 01 00 44 */	stw r0, 0x44(r1)
/* 800158E4 00012844  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 800158E8 00012848  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800158EC 0001284C  39 61 00 30 */	addi r11, r1, 0x30
/* 800158F0 00012850  48 08 55 E1 */	bl func_8009AED0
/* 800158F4 00012854  7C 7C 1B 78 */	mr r28, r3
/* 800158F8 00012858  98 81 00 08 */	stb r4, 8(r1)
/* 800158FC 0001285C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80015900 00012860  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 80015904 00012864  FF C0 08 90 */	fmr f30, f1
/* 80015908 00012868  80 0D 88 10 */	lwz r0, current_sub_track-_SDA_BASE_(r13)
/* 8001590C 0001286C  54 00 10 3A */	slwi r0, r0, 2
/* 80015910 00012870  38 6D 88 14 */	addi r3, r13, na_melody_id_hist-_SDA_BASE_
/* 80015914 00012874  7C 03 00 2E */	lwzx r0, r3, r0
/* 80015918 00012878  7C 1C 00 40 */	cmplw r28, r0
/* 8001591C 0001287C  40 82 00 0C */	bne lbl_80015928
/* 80015920 00012880  83 ED 88 10 */	lwz r31, current_sub_track-_SDA_BASE_(r13)
/* 80015924 00012884  48 00 00 20 */	b lbl_80015944
lbl_80015928:
/* 80015928 00012888  80 0D 88 10 */	lwz r0, current_sub_track-_SDA_BASE_(r13)
/* 8001592C 0001288C  2C 00 00 00 */	cmpwi r0, 0
/* 80015930 00012890  40 82 00 0C */	bne lbl_8001593C
/* 80015934 00012894  3B C0 00 01 */	li r30, 1
/* 80015938 00012898  48 00 00 08 */	b lbl_80015940
lbl_8001593C:
/* 8001593C 0001289C  3B C0 00 00 */	li r30, 0
lbl_80015940:
/* 80015940 000128A0  7F DF F3 78 */	mr r31, r30
lbl_80015944:
/* 80015944 000128A4  57 E0 10 3A */	slwi r0, r31, 2
/* 80015948 000128A8  38 6D 88 14 */	addi r3, r13, na_melody_id_hist-_SDA_BASE_
/* 8001594C 000128AC  7F 83 01 2E */	stwx r28, r3, r0
/* 80015950 000128B0  93 ED 88 10 */	stw r31, current_sub_track-_SDA_BASE_(r13)
/* 80015954 000128B4  3B FF 00 0E */	addi r31, r31, 0xe
/* 80015958 000128B8  A0 61 00 10 */	lhz r3, 0x10(r1)
/* 8001595C 000128BC  FC 20 F0 90 */	fmr f1, f30
/* 80015960 000128C0  4B FF 6B D9 */	bl angle2pan__FUsf
/* 80015964 000128C4  7C 7D 1B 78 */	mr r29, r3
/* 80015968 000128C8  FC 20 F0 90 */	fmr f1, f30
/* 8001596C 000128CC  4B FF 6C 85 */	bl distance2vol__Ff
/* 80015970 000128D0  FF E0 08 90 */	fmr f31, f1
/* 80015974 000128D4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80015978 000128D8  54 00 40 2E */	slwi r0, r0, 8
/* 8001597C 000128DC  64 03 10 02 */	oris r3, r0, 0x1002
/* 80015980 000128E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80015984 000128E4  38 00 00 00 */	li r0, 0
/* 80015988 000128E8  48 00 F8 D9 */	bl Nap_SetS32__FUll
/* 8001598C 000128EC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80015990 000128F0  54 00 40 2E */	slwi r0, r0, 8
/* 80015994 000128F4  64 00 06 02 */	oris r0, r0, 0x602
/* 80015998 000128F8  60 03 00 02 */	ori r3, r0, 2
/* 8001599C 000128FC  88 01 00 08 */	lbz r0, 8(r1)
/* 800159A0 00012900  7C 04 07 74 */	extsb r4, r0
/* 800159A4 00012904  48 00 F8 FD */	bl Nap_SetS8__FUlSc
/* 800159A8 00012908  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800159AC 0001290C  54 00 40 2E */	slwi r0, r0, 8
/* 800159B0 00012910  64 03 06 02 */	oris r3, r0, 0x602
/* 800159B4 00012914  38 80 00 00 */	li r4, 0
/* 800159B8 00012918  48 00 F8 E9 */	bl Nap_SetS8__FUlSc
/* 800159BC 0001291C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800159C0 00012920  54 00 40 2E */	slwi r0, r0, 8
/* 800159C4 00012924  64 03 01 02 */	oris r3, r0, 0x102
/* 800159C8 00012928  FC 20 F8 90 */	fmr f1, f31
/* 800159CC 0001292C  48 00 F8 55 */	bl Nap_SetF32__FUlf
/* 800159D0 00012930  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800159D4 00012934  54 00 40 2E */	slwi r0, r0, 8
/* 800159D8 00012938  64 03 03 02 */	oris r3, r0, 0x302
/* 800159DC 0001293C  7F A4 07 74 */	extsb r4, r29
/* 800159E0 00012940  48 00 F8 C1 */	bl Nap_SetS8__FUlSc
/* 800159E4 00012944  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 800159E8 00012948  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800159EC 0001294C  39 61 00 30 */	addi r11, r1, 0x30
/* 800159F0 00012950  48 08 55 2D */	bl func_8009AF1C
/* 800159F4 00012954  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800159F8 00012958  7C 08 03 A6 */	mtlr r0
/* 800159FC 0001295C  38 21 00 40 */	addi r1, r1, 0x40
/* 80015A00 00012960  4E 80 00 20 */	blr 

.global Na_MelodyVoice
Na_MelodyVoice:
/* 80015A04 00012964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015A08 00012968  7C 08 02 A6 */	mflr r0
/* 80015A0C 0001296C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015A10 00012970  B0 61 00 08 */	sth r3, 8(r1)
/* 80015A14 00012974  A8 01 00 08 */	lha r0, 8(r1)
/* 80015A18 00012978  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80015A1C 0001297C  38 80 00 06 */	li r4, 6
/* 80015A20 00012980  3C A0 80 0B */	lis r5, lbl_800AA4F0@ha
/* 80015A24 00012984  38 A5 A4 F0 */	addi r5, r5, lbl_800AA4F0@l
/* 80015A28 00012988  4B FF FC 91 */	bl Na_MelodyStart__FUssPCUc
/* 80015A2C 0001298C  3C 60 01 00 */	lis r3, 0x01000600@ha
/* 80015A30 00012990  38 63 06 00 */	addi r3, r3, 0x01000600@l
/* 80015A34 00012994  C0 22 81 7C */	lfs f1, @238-_SDA2_BASE_(r2)
/* 80015A38 00012998  48 00 F7 E9 */	bl Nap_SetF32__FUlf
/* 80015A3C 0001299C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015A40 000129A0  7C 08 03 A6 */	mtlr r0
/* 80015A44 000129A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80015A48 000129A8  4E 80 00 20 */	blr 