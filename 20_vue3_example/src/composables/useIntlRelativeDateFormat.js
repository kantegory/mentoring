import { ref, onMounted } from 'vue'

function countTimedeltaFromToday(date) {
    const currDate = new Date();
    const delta = currDate.getTime() - date.getTime();

    const ONE_MILLISECOND = 1000;
    const HOUR_IN_SECONDS = 60 * 60;
    const DAY_IN_HOURS = 24;
    const MONTH_IN_DAYS = 30;
    const YEAR_IN_MONTH = 12;

    const daysDelta = delta / ONE_MILLISECOND / HOUR_IN_SECONDS / DAY_IN_HOURS;
    const monthsDelta = daysDelta / MONTH_IN_DAYS;
    const yearsDelta = monthsDelta / YEAR_IN_MONTH;

    return {
        delta,
        daysDelta,
        monthsDelta,
        yearsDelta,
    };
}

function formatDate(intl, date) {
    const MAX_DAYS_DELTA = 15;
    const MAX_MONTHS_DELTA = 11;

    const delta = countTimedeltaFromToday(date);

    const { daysDelta, monthsDelta, yearsDelta } = delta;

    if (daysDelta < MAX_DAYS_DELTA) {
        return intl.format(Math.floor(-daysDelta), 'day');
    }

    if (monthsDelta < MAX_MONTHS_DELTA) {
        return intl.format(Math.floor(-monthsDelta), 'month');
    }

    return intl.format(Math.floor(-yearsDelta), 'year');
}

const intl = new Intl.RelativeTimeFormat('ru', { style: 'long', numeric: 'auto' });

const useIntlRelativeDateFormat = (dateString) => {
    const relativeDate = ref(null)

    onMounted(() => {
        const date = new Date(dateString)
        const formattedDate = formatDate(intl, date)

        relativeDate.value = formattedDate
    })

    return relativeDate
}

export default useIntlRelativeDateFormat;
