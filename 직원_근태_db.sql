    insert into cafe_employee values('1001', '������', '9608122408517', '010-2325-1541', '��õ', '18/09/27', '', 'n', '����', '110-418-218594', '�Ŵ���');
    
    insert into cafe_employee values('1002', '�̵���', '8001252607412', '010-1928-3746', '����', '18/12/24', '', 'n', 'īī��', '3333163146320', '�Ŵ���');
    
    insert into cafe_employee values('2001', '������', '9404161047412', '010-4301-1668', '��õ', '19/01/31', '', 'n', '�ϳ�', '194-960402-74652', '�Ƹ�����Ʈpro');
    
    insert into cafe_employee values('2002', '������', '9410271017718', '010-4388-3031', '����', '19/06/30', '', 'n', '�츮', '033-066955-30609', '�Ƹ�����Ʈpro');
    
    insert into cafe_employee values('3001', '�ڸ���', '9109241040608', '010-4989-4989', '����', '20/03/27', '25/03/31', 'y', '����', '302-0416-8789-11', '�Ƹ�����Ʈ');
    
    insert into cafe_employee values('3002', '������', '9407242071813', '010-5514-8025', '����', '20/06/12', '', 'n', '��ȯ', '020-107413-567', '�Ƹ�����Ʈ');
    
    insert into cafe_employee values('3003', '����ȣ', '9412021040608', '010-9920-1729', '�ϻ�', '20/04/27', '', 'n', '����', '304102-04-177349', '�Ƹ�����Ʈ');
    
    insert into cafe_employee values('3004', '������', '9501181071819', '010-8963-3790', '����', '20/06/24', '', 'n', '���', '0108963379000', '�Ƹ�����Ʈ');
    
    insert into cafe_employee values('3005', '���¿�', '9106241041876', '010-4689-7328', '����', '20/06/27', '', 'n', '�泲', '221-001149-04-016', '�Ƹ�����Ʈ');
    
    insert into cafe_employee values('3006', '������', '9511111187626', '010-9954-2787', '�λ�', '20/06/30', '', 'n', '�뱸', '505-10-206971-6', '�Ƹ�����Ʈ');

    insert into cafe_employee values('3008', '����Ź', '9010181683487', '010-3454-3849', '�Ǳ�', '20/07/01', '', 'n', 'īī��', '3333163248260', '�Ƹ�����Ʈ');

    insert into cafe_employee values('3009', '������', '9511111836921', '010-6954-0727', '��õ', '20/07/01', '', 'n', '����', '302-0417-2939-11', '�Ƹ�����Ʈ');

--				     ������ ȭ���� ����
--				     �̵��� ����� ����	
--			     	     ������ ���� ����Ÿ��
--				     ������ ���� ����Ʈ
--				     �ڸ��� ���� ����
--				     ������ ���� ������
--				     ����ȣ ���� ȭ��
--				     ������ �򻧱�,�ָ� ����
--				     ���¿� �ָ� ����Ʈ
--				     ������ ���� ����
--				     ����Ź �ָ�����
--				     ������ �ָ� ����Ʈ
    select * from cafe_customer;
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 1, (to_date('07-01-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 1, (to_date('07-01-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 1, (to_date('07-01-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 1, (to_date('07-01-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 1, (to_date('07-01-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 1;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 1, (to_date('07-01-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-01-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 1;
    
    
    --7�� 2��-- ��ex
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 2, (to_date('07-02-2020 08:52:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 21:37:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 2, (to_date('07-02-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 16:05:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 2, (to_date('07-02-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 22:58:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 2, (to_date('07-02-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 15:43:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 2;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 2, (to_date('07-02-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-02-2020, 21:43:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 2;
    
    
    --7�� 3��-- ��ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 3, (to_date('07-03-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 3, (to_date('07-03-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 3, (to_date('07-03-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 3, (to_date('07-03-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 3, (to_date('07-03-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 3, (to_date('07-03-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 3;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 3, (to_date('07-03-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-03-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 3;
    
    
    --7�� 4��-- ��ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 4, (to_date('07-04-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 4, (to_date('07-04-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 4, (to_date('07-04-2020 11:29:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 16:01:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 4, (to_date('07-04-2020 17:35:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 4, (to_date('07-04-2020 11:47:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 4, (to_date('07-04-2020 12:02:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 4;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 4, (to_date('07-04-2020 17:59:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-04-2020, 22:53:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 4;
    
    
    --7�� 5��-- ��ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 5, (to_date('07-05-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 5, (to_date('07-05-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 5, (to_date('07-05-2020 11:29:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 16:01:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 5, (to_date('07-05-2020 17:35:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 5, (to_date('07-05-2020 11:47:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 22:53:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 5;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 5, (to_date('07-05-2020 12:15:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-05-2020, 18:49:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 5;
    
    
    --7�� 6��-- ��ex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 6, (to_date('07-06-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 6, (to_date('07-06-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 6, (to_date('07-06-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 6, (to_date('07-06-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 6, (to_date('07-06-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 6;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 6, (to_date('07-06-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-06-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 6;
    
    
    --7�� 7��-- ȭex
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 7, (to_date('07-07-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 7, (to_date('07-07-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 7, (to_date('07-07-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 7, (to_date('07-07-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 7;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 7, (to_date('07-07-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-07-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 7;
    
    
    --7�� 8��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 8, (to_date('07-08-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 8, (to_date('07-08-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 8, (to_date('07-08-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 8, (to_date('07-08-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 8, (to_date('07-08-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 8, (to_date('07-08-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-08-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 8;
    
    
    --7�� 9��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 9, (to_date('07-09-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 9, (to_date('07-09-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 9, (to_date('07-09-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 9, (to_date('07-09-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 9;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 9, (to_date('07-09-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-09-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 9;
    
    
    --7�� 10��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 10, (to_date('07-10-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 10, (to_date('07-10-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 10, (to_date('07-10-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 10, (to_date('07-10-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 10, (to_date('07-10-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 10, (to_date('07-10-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 10;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 10, (to_date('07-10-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-10-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 10;
    
    
    --7�� 11��-- ��
    
    
     insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 11, (to_date('07-11-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 11, (to_date('07-11-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 11, (to_date('07-11-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 11, (to_date('07-11-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 11, (to_date('07-11-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 11, (to_date('07-11-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 11;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 11, (to_date('07-11-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-11-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 11;
    
    
    --7�� 12��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 12, (to_date('07-12-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 12, (to_date('07-12-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 12, (to_date('07-12-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 12, (to_date('07-12-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 12, (to_date('07-12-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 12, (to_date('07-12-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 12;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 12, (to_date('07-12-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-12-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 12;
    
    
    --7�� 13��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 13, (to_date('07-13-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 17:23:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 13, (to_date('07-13-2020 17:21:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 23:17:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 13, (to_date('07-13-2020 08:13:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 15:52:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 13, (to_date('07-13-2020 15:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 23:23:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 13, (to_date('07-13-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 14:53:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 13;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 13, (to_date('07-13-2020 14:11:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-13-2020, 20:53:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 13;
    
    
    --7�� 14��-- ȭ
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 14, (to_date('07-14-2020 08:48:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 21:23:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 14, (to_date('07-14-2020 08:26:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 16:16:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 14, (to_date('07-14-2020 15:39:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 22:59:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 14, (to_date('07-14-2020 08:52:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 15:17:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 14;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 14, (to_date('07-14-2020 15:24:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-14-2020, 21:23:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 14;
    
    
    --7�� 15��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 15, (to_date('07-15-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 15, (to_date('07-15-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 15, (to_date('07-15-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 15, (to_date('07-15-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 15, (to_date('07-15-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 15;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 15, (to_date('07-15-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-15-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 15;
    
    
    --7�� 16��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 16, (to_date('07-16-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 16, (to_date('07-16-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 16, (to_date('07-16-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 16, (to_date('07-16-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 16;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 16, (to_date('07-16-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-16-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 16;
    
    
    --7�� 17��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 17, (to_date('07-17-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 17, (to_date('07-17-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 17, (to_date('07-17-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 17, (to_date('07-17-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 17, (to_date('07-17-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 17, (to_date('07-17-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 17;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 17, (to_date('07-17-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-17-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 17;
    
    
    --7�� 18��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 18, (to_date('07-18-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 18, (to_date('07-18-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 18, (to_date('07-18-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 18, (to_date('07-18-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 18, (to_date('07-18-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 18, (to_date('07-18-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 18;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 18, (to_date('07-18-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-18-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 18;
    
    
    --7�� 19��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 19, (to_date('07-19-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 19, (to_date('07-19-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 19, (to_date('07-19-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 19, (to_date('07-19-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 19, (to_date('07-19-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 19, (to_date('07-19-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 19;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 19, (to_date('07-19-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-19-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 19;
    
    
    --7�� 20��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 20, (to_date('07-20-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 20, (to_date('07-20-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 20, (to_date('07-20-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 20, (to_date('07-20-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 20, (to_date('07-20-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 20;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 20, (to_date('07-20-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-20-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 20;
    
    
    --7�� 21��-- ȭ
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 21, (to_date('07-21-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 21, (to_date('07-21-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 21, (to_date('07-21-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 21, (to_date('07-21-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 21;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 21, (to_date('07-21-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-21-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 21;
    
    
    --7�� 22��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 22, (to_date('07-22-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 22, (to_date('07-22-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 22, (to_date('07-22-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 22, (to_date('07-22-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 22, (to_date('07-22-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 22;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 22, (to_date('07-22-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-22-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 22;
    
    
    --7�� 23��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 23, (to_date('07-23-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 23, (to_date('07-23-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 23, (to_date('07-23-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 23, (to_date('07-23-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 23;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 23, (to_date('07-23-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-23-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 23;
    
    
    
    --7�� 24��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 24, (to_date('07-24-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 24, (to_date('07-24-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 24, (to_date('07-24-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 24, (to_date('07-24-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 24, (to_date('07-24-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 24, (to_date('07-24-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 24;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 24, (to_date('07-24-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-24-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 24;
    
    
    --7�� 25��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 25, (to_date('07-25-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 25, (to_date('07-25-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 25, (to_date('07-25-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 25, (to_date('07-25-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 25, (to_date('07-25-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 25, (to_date('07-25-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 25;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 25, (to_date('07-25-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-25-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 25;
    
    
    --7�� 26��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 26, (to_date('07-26-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 26, (to_date('07-26-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 26, (to_date('07-26-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 7, 26, (to_date('07-26-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 26, (to_date('07-26-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 7, 26, (to_date('07-26-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 26;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 7, 26, (to_date('07-26-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('07-26-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 26;
    
    
    --7�� 27��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 27, (to_date('07-27-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 27, (to_date('07-27-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 27, (to_date('07-27-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 27, (to_date('07-27-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 27, (to_date('07-27-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 27;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 27, (to_date('07-27-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-27-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 27;
    
    
    --7�� 28��-- ȭ
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 28, (to_date('07-28-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 28, (to_date('07-28-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 28, (to_date('07-28-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 28, (to_date('07-28-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 28;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 28, (to_date('07-28-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-28-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 28;
    
    
    --7�� 29��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 29, (to_date('07-29-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 29, (to_date('07-29-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 29, (to_date('07-29-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 29, (to_date('07-29-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 29, (to_date('07-29-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 29;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 29, (to_date('07-29-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-29-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 29;
    
    
    --7�� 30��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 30, (to_date('07-30-2020 08:50:41','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 30, (to_date('07-30-2020 08:21:34','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 30, (to_date('07-30-2020 15:46:37','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 7, 30, (to_date('07-30-2020 08:51:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 30;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 30, (to_date('07-30-2020 15:20:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-30-2020, 21:42:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 30;
    
    
    --7�� 31��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 7, 31, (to_date('07-31-2020 08:47:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 17:16:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 7, 31, (to_date('07-31-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 23:57:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 7, 31, (to_date('07-31-2020 08:21:48','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 16:12:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 7, 31, (to_date('07-31-2020 16:05:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 7, 31, (to_date('07-31-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 7, 31, (to_date('07-31-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 31;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 7, 31, (to_date('07-31-2020 18:21:47','MM-DD-YYYY HH24:MI:SS')), (to_date('07-31-2020, 22:47:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 31;
    
    
    --8�� 1��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 1, (to_date('08-01-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 1, (to_date('08-01-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 1, (to_date('08-01-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 8, 1, (to_date('08-01-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 8, 1, (to_date('08-01-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 8, 1, (to_date('08-01-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 1 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 8, 1, (to_date('08-01-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-01-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 1 and emptna_month = 8;
    
    
    --8�� 2��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 2, (to_date('08-02-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 17:26:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 2, (to_date('08-02-2020 17:48:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 23:49:14','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 2, (to_date('08-02-2020 11:26:11','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 16:12:11','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3005, 2020, 8, 2, (to_date('08-02-2020 17:32:47','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 22:55:32','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3005 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 8, 2, (to_date('08-02-2020 11:43:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 22:55:54','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3008, 2020, 8, 2, (to_date('08-02-2020 11:59:54','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 18:23:45','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3008 and emptna_day = 2 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3009, 2020, 8, 2, (to_date('08-02-2020 17:45:45','MM-DD-YYYY HH24:MI:SS')), (to_date('08-02-2020, 22:30:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3009 and emptna_day = 2 and emptna_month = 8;
    
    
    --8�� 3��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 3, (to_date('08-03-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 3, (to_date('08-03-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 8, 3, (to_date('08-03-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 8, 3, (to_date('08-03-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 8, 3, (to_date('08-03-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 3 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 3, (to_date('08-03-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('08-03-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 3 and emptna_month = 8;
    
    
    --8�� 4��-- ȭ
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 4, (to_date('08-04-2020 08:53:41','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 21:35:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 8, 4, (to_date('08-04-2020 08:23:34','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 16:03:24','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 8, 4, (to_date('08-04-2020 15:48:37','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 22:56:59','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3003, 2020, 8, 4, (to_date('08-04-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 15:41:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3003 and emptna_day = 4 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3006, 2020, 8, 4, (to_date('08-04-2020 15:17:23','MM-DD-YYYY HH24:MI:SS')), (to_date('08-04-2020, 21:40:00','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3006 and emptna_day = 4 and emptna_month = 8;
    
    
    --8�� 5��-- ��
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1001, 2020, 8, 5, (to_date('08-05-2020 08:53:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 17:32:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1001 and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 1002, 2020, 8, 5, (to_date('08-05-2020 17:28:12','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 23:11:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 1002 and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2001, 2020, 8, 5, (to_date('08-05-2020 08:24:19','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 15:58:48','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2001and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 2002, 2020, 8, 5, (to_date('08-05-2020 15:35:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 23:34:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 2002and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3002, 2020, 8, 5, (to_date('08-05-2020 08:45:49','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 14:31:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3002 and emptna_day = 5 and emptna_month = 8;
    
    
    insert into cafe_emptna values ((select nvl(max(emptna_code),0)+1 from cafe_emptna), 3004, 2020, 8, 5, (to_date('08-05-2020 14:23:23','MM-DD-YYYY HH24:MI:SS')), (to_date('08-05-2020, 20:14:28','MM-DD-YYYY HH24:MI:SS')), 1);
    update cafe_emptna set emptna_daytotaltime= round((emptna_endtime - emptna_starttime)*24,1) where emptna_empcode = 3004 and emptna_day = 5 and emptna_month = 8;
    
    
				
				
					
							